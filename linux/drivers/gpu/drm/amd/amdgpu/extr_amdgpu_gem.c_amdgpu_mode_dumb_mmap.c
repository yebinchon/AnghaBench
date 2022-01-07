
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int ttm; } ;
struct amdgpu_bo {int flags; TYPE_1__ tbo; } ;


 int AMDGPU_GEM_CREATE_NO_CPU_ACCESS ;
 int ENOENT ;
 int EPERM ;
 int amdgpu_bo_mmap_offset (struct amdgpu_bo*) ;
 scalar_t__ amdgpu_ttm_tt_get_usermm (int ) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct amdgpu_bo* gem_to_amdgpu_bo (struct drm_gem_object*) ;

int amdgpu_mode_dumb_mmap(struct drm_file *filp,
     struct drm_device *dev,
     uint32_t handle, uint64_t *offset_p)
{
 struct drm_gem_object *gobj;
 struct amdgpu_bo *robj;

 gobj = drm_gem_object_lookup(filp, handle);
 if (gobj == ((void*)0)) {
  return -ENOENT;
 }
 robj = gem_to_amdgpu_bo(gobj);
 if (amdgpu_ttm_tt_get_usermm(robj->tbo.ttm) ||
     (robj->flags & AMDGPU_GEM_CREATE_NO_CPU_ACCESS)) {
  drm_gem_object_put_unlocked(gobj);
  return -EPERM;
 }
 *offset_p = amdgpu_bo_mmap_offset(robj);
 drm_gem_object_put_unlocked(gobj);
 return 0;
}
