
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_create_dumb {int pitch; int width; int bpp; int height; int size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ALIGN (int ,int ) ;
 int DIV_ROUND_UP (int,int) ;
 int PAGE_ALIGN (int) ;
 int SZ_64 ;
 int drm_gem_cma_dumb_create_internal (struct drm_file*,struct drm_device*,struct drm_mode_create_dumb*) ;

__attribute__((used)) static int meson_dumb_create(struct drm_file *file, struct drm_device *dev,
        struct drm_mode_create_dumb *args)
{



 args->pitch = ALIGN(DIV_ROUND_UP(args->width * args->bpp, 8), SZ_64);
 args->size = PAGE_ALIGN(args->pitch * args->height);

 return drm_gem_cma_dumb_create_internal(file, dev, args);
}
