
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_panfrost_mmap_bo {scalar_t__ flags; int offset; int handle; } ;
struct drm_gem_object {int vma_node; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_heap; } ;


 int DRM_DEBUG (char*,int ) ;
 int DRM_INFO (char*,scalar_t__) ;
 int EINVAL ;
 int ENOENT ;
 int drm_gem_create_mmap_offset (struct drm_gem_object*) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int drm_vma_node_offset_addr (int *) ;
 TYPE_1__* to_panfrost_bo (struct drm_gem_object*) ;

__attribute__((used)) static int panfrost_ioctl_mmap_bo(struct drm_device *dev, void *data,
        struct drm_file *file_priv)
{
 struct drm_panfrost_mmap_bo *args = data;
 struct drm_gem_object *gem_obj;
 int ret;

 if (args->flags != 0) {
  DRM_INFO("unknown mmap_bo flags: %d\n", args->flags);
  return -EINVAL;
 }

 gem_obj = drm_gem_object_lookup(file_priv, args->handle);
 if (!gem_obj) {
  DRM_DEBUG("Failed to look up GEM BO %d\n", args->handle);
  return -ENOENT;
 }


 if (to_panfrost_bo(gem_obj)->is_heap)
  return -EINVAL;

 ret = drm_gem_create_mmap_offset(gem_obj);
 if (ret == 0)
  args->offset = drm_vma_node_offset_addr(&gem_obj->vma_node);
 drm_gem_object_put_unlocked(gem_obj);

 return ret;
}
