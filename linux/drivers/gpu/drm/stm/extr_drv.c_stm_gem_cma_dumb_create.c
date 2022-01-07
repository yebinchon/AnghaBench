
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_create_dumb {int width; int bpp; unsigned int height; void* pitch; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 unsigned int DIV_ROUND_UP (int,int) ;
 int drm_gem_cma_dumb_create_internal (struct drm_file*,struct drm_device*,struct drm_mode_create_dumb*) ;
 void* roundup (unsigned int,int) ;

__attribute__((used)) static int stm_gem_cma_dumb_create(struct drm_file *file,
       struct drm_device *dev,
       struct drm_mode_create_dumb *args)
{
 unsigned int min_pitch = DIV_ROUND_UP(args->width * args->bpp, 8);





 args->pitch = roundup(min_pitch, 128);
 args->height = roundup(args->height, 4);

 return drm_gem_cma_dumb_create_internal(file, dev, args);
}
