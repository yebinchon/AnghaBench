
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct qxl_surface {int dummy; } ;
struct qxl_device {int dummy; } ;
struct qxl_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int drm_gem_handle_create (struct drm_file*,struct drm_gem_object*,int *) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct qxl_bo* gem_to_qxl_bo (struct drm_gem_object*) ;
 int qxl_gem_object_create (struct qxl_device*,size_t,int ,int ,int,int,struct qxl_surface*,struct drm_gem_object**) ;

int qxl_gem_object_create_with_handle(struct qxl_device *qdev,
          struct drm_file *file_priv,
          u32 domain,
          size_t size,
          struct qxl_surface *surf,
          struct qxl_bo **qobj,
          uint32_t *handle)
{
 struct drm_gem_object *gobj;
 int r;

 BUG_ON(!qobj);
 BUG_ON(!handle);

 r = qxl_gem_object_create(qdev, size, 0,
      domain,
      0, 0, surf,
      &gobj);
 if (r)
  return -ENOMEM;
 r = drm_gem_handle_create(file_priv, gobj, handle);
 if (r)
  return r;

 *qobj = gem_to_qxl_bo(gobj);
 drm_gem_object_put_unlocked(gobj);
 return 0;
}
