
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct qxl_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int BUG_ON (int) ;
 int ENOENT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct qxl_bo* gem_to_qxl_bo (struct drm_gem_object*) ;
 int qxl_bo_mmap_offset (struct qxl_bo*) ;

int qxl_mode_dumb_mmap(struct drm_file *file_priv,
         struct drm_device *dev,
         uint32_t handle, uint64_t *offset_p)
{
 struct drm_gem_object *gobj;
 struct qxl_bo *qobj;

 BUG_ON(!offset_p);
 gobj = drm_gem_object_lookup(file_priv, handle);
 if (gobj == ((void*)0))
  return -ENOENT;
 qobj = gem_to_qxl_bo(gobj);
 *offset_p = qxl_bo_mmap_offset(qobj);
 drm_gem_object_put_unlocked(gobj);
 return 0;
}
