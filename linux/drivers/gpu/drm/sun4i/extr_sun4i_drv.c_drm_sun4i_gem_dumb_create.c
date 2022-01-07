
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_create_dumb {int width; int bpp; int pitch; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ALIGN (int ,int) ;
 int DIV_ROUND_UP (int,int) ;
 int drm_gem_cma_dumb_create_internal (struct drm_file*,struct drm_device*,struct drm_mode_create_dumb*) ;

__attribute__((used)) static int drm_sun4i_gem_dumb_create(struct drm_file *file_priv,
         struct drm_device *drm,
         struct drm_mode_create_dumb *args)
{

 args->pitch = ALIGN(DIV_ROUND_UP(args->width * args->bpp, 8), 2);

 return drm_gem_cma_dumb_create_internal(file_priv, drm, args);
}
