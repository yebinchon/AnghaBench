
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;
struct rockchip_gem_object {struct drm_gem_object base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 struct rockchip_gem_object* ERR_CAST (struct rockchip_gem_object*) ;
 struct rockchip_gem_object* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct rockchip_gem_object*) ;
 int drm_gem_handle_create (struct drm_file*,struct drm_gem_object*,unsigned int*) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct rockchip_gem_object* rockchip_gem_create_object (struct drm_device*,unsigned int,int) ;
 int rockchip_gem_free_object (struct drm_gem_object*) ;

__attribute__((used)) static struct rockchip_gem_object *
rockchip_gem_create_with_handle(struct drm_file *file_priv,
    struct drm_device *drm, unsigned int size,
    unsigned int *handle)
{
 struct rockchip_gem_object *rk_obj;
 struct drm_gem_object *obj;
 int ret;

 rk_obj = rockchip_gem_create_object(drm, size, 0);
 if (IS_ERR(rk_obj))
  return ERR_CAST(rk_obj);

 obj = &rk_obj->base;





 ret = drm_gem_handle_create(file_priv, obj, handle);
 if (ret)
  goto err_handle_create;


 drm_gem_object_put_unlocked(obj);

 return rk_obj;

err_handle_create:
 rockchip_gem_free_object(obj);

 return ERR_PTR(ret);
}
