
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int data_size_bytes; int flags; int data; int tiling_info; } ;
struct drm_amdgpu_gem_metadata {scalar_t__ op; TYPE_1__ data; int handle; } ;
struct amdgpu_bo {int dummy; } ;


 scalar_t__ AMDGPU_GEM_METADATA_OP_GET_METADATA ;
 scalar_t__ AMDGPU_GEM_METADATA_OP_SET_METADATA ;
 int DRM_DEBUG (char*,int ) ;
 int EINVAL ;
 int ENOENT ;
 int amdgpu_bo_get_metadata (struct amdgpu_bo*,int ,int,int*,int *) ;
 int amdgpu_bo_get_tiling_flags (struct amdgpu_bo*,int *) ;
 int amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_set_metadata (struct amdgpu_bo*,int ,int,int ) ;
 int amdgpu_bo_set_tiling_flags (struct amdgpu_bo*,int ) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct amdgpu_bo* gem_to_amdgpu_bo (struct drm_gem_object*) ;
 scalar_t__ unlikely (int) ;

int amdgpu_gem_metadata_ioctl(struct drm_device *dev, void *data,
    struct drm_file *filp)
{
 struct drm_amdgpu_gem_metadata *args = data;
 struct drm_gem_object *gobj;
 struct amdgpu_bo *robj;
 int r = -1;

 DRM_DEBUG("%d \n", args->handle);
 gobj = drm_gem_object_lookup(filp, args->handle);
 if (gobj == ((void*)0))
  return -ENOENT;
 robj = gem_to_amdgpu_bo(gobj);

 r = amdgpu_bo_reserve(robj, 0);
 if (unlikely(r != 0))
  goto out;

 if (args->op == AMDGPU_GEM_METADATA_OP_GET_METADATA) {
  amdgpu_bo_get_tiling_flags(robj, &args->data.tiling_info);
  r = amdgpu_bo_get_metadata(robj, args->data.data,
        sizeof(args->data.data),
        &args->data.data_size_bytes,
        &args->data.flags);
 } else if (args->op == AMDGPU_GEM_METADATA_OP_SET_METADATA) {
  if (args->data.data_size_bytes > sizeof(args->data.data)) {
   r = -EINVAL;
   goto unreserve;
  }
  r = amdgpu_bo_set_tiling_flags(robj, args->data.tiling_info);
  if (!r)
   r = amdgpu_bo_set_metadata(robj, args->data.data,
         args->data.data_size_bytes,
         args->data.flags);
 }

unreserve:
 amdgpu_bo_unreserve(robj);
out:
 drm_gem_object_put_unlocked(gobj);
 return r;
}
