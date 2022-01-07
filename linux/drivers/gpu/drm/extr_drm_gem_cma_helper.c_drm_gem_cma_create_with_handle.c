
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_gem_object {int dummy; } ;
struct drm_gem_cma_object {struct drm_gem_object base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 struct drm_gem_cma_object* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct drm_gem_cma_object*) ;
 struct drm_gem_cma_object* drm_gem_cma_create (struct drm_device*,size_t) ;
 int drm_gem_handle_create (struct drm_file*,struct drm_gem_object*,int *) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;

__attribute__((used)) static struct drm_gem_cma_object *
drm_gem_cma_create_with_handle(struct drm_file *file_priv,
          struct drm_device *drm, size_t size,
          uint32_t *handle)
{
 struct drm_gem_cma_object *cma_obj;
 struct drm_gem_object *gem_obj;
 int ret;

 cma_obj = drm_gem_cma_create(drm, size);
 if (IS_ERR(cma_obj))
  return cma_obj;

 gem_obj = &cma_obj->base;





 ret = drm_gem_handle_create(file_priv, gem_obj, handle);

 drm_gem_object_put_unlocked(gem_obj);
 if (ret)
  return ERR_PTR(ret);

 return cma_obj;
}
