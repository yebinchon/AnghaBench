
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOENT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int msm_gem_mmap_offset (struct drm_gem_object*) ;

int msm_gem_dumb_map_offset(struct drm_file *file, struct drm_device *dev,
  uint32_t handle, uint64_t *offset)
{
 struct drm_gem_object *obj;
 int ret = 0;


 obj = drm_gem_object_lookup(file, handle);
 if (obj == ((void*)0)) {
  ret = -ENOENT;
  goto fail;
 }

 *offset = msm_gem_mmap_offset(obj);

 drm_gem_object_put_unlocked(obj);

fail:
 return ret;
}
