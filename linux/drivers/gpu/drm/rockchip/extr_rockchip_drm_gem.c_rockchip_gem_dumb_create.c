
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_gem_object {int dummy; } ;
struct drm_mode_create_dumb {int width; int bpp; int pitch; int size; int height; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ALIGN (int,int) ;
 int DIV_ROUND_UP (int,int) ;
 int PTR_ERR_OR_ZERO (struct rockchip_gem_object*) ;
 struct rockchip_gem_object* rockchip_gem_create_with_handle (struct drm_file*,struct drm_device*,int,int *) ;

int rockchip_gem_dumb_create(struct drm_file *file_priv,
        struct drm_device *dev,
        struct drm_mode_create_dumb *args)
{
 struct rockchip_gem_object *rk_obj;
 int min_pitch = DIV_ROUND_UP(args->width * args->bpp, 8);




 args->pitch = ALIGN(min_pitch, 64);
 args->size = args->pitch * args->height;

 rk_obj = rockchip_gem_create_with_handle(file_priv, dev, args->size,
       &args->handle);

 return PTR_ERR_OR_ZERO(rk_obj);
}
