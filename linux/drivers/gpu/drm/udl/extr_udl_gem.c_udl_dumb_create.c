
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_create_dumb {int pitch; int width; int size; int height; int handle; int bpp; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DIV_ROUND_UP (int ,int) ;
 int udl_gem_create (struct drm_file*,struct drm_device*,int,int *) ;

int udl_dumb_create(struct drm_file *file,
      struct drm_device *dev,
      struct drm_mode_create_dumb *args)
{
 args->pitch = args->width * DIV_ROUND_UP(args->bpp, 8);
 args->size = args->pitch * args->height;
 return udl_gem_create(file, dev,
         args->size, &args->handle);
}
