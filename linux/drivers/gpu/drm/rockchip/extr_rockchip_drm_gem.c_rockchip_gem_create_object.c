
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_gem_object {int dummy; } ;
struct drm_device {int dummy; } ;


 struct rockchip_gem_object* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct rockchip_gem_object*) ;
 int rockchip_gem_alloc_buf (struct rockchip_gem_object*,int) ;
 struct rockchip_gem_object* rockchip_gem_alloc_object (struct drm_device*,unsigned int) ;
 int rockchip_gem_release_object (struct rockchip_gem_object*) ;

struct rockchip_gem_object *
rockchip_gem_create_object(struct drm_device *drm, unsigned int size,
      bool alloc_kmap)
{
 struct rockchip_gem_object *rk_obj;
 int ret;

 rk_obj = rockchip_gem_alloc_object(drm, size);
 if (IS_ERR(rk_obj))
  return rk_obj;

 ret = rockchip_gem_alloc_buf(rk_obj, alloc_kmap);
 if (ret)
  goto err_free_rk_obj;

 return rk_obj;

err_free_rk_obj:
 rockchip_gem_release_object(rk_obj);
 return ERR_PTR(ret);
}
