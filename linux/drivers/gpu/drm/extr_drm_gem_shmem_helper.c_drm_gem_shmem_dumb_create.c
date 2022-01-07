
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_mode_create_dumb {int width; int bpp; int pitch; int size; int height; int handle; } ;
struct drm_gem_shmem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 scalar_t__ DIV_ROUND_UP (int,int) ;
 int PTR_ERR_OR_ZERO (struct drm_gem_shmem_object*) ;
 struct drm_gem_shmem_object* drm_gem_shmem_create_with_handle (struct drm_file*,struct drm_device*,int,int *) ;

int drm_gem_shmem_dumb_create(struct drm_file *file, struct drm_device *dev,
         struct drm_mode_create_dumb *args)
{
 u32 min_pitch = DIV_ROUND_UP(args->width * args->bpp, 8);
 struct drm_gem_shmem_object *shmem;

 if (!args->pitch || !args->size) {
  args->pitch = min_pitch;
  args->size = args->pitch * args->height;
 } else {

  if (args->pitch < min_pitch)
   args->pitch = min_pitch;
  if (args->size < args->pitch * args->height)
   args->size = args->pitch * args->height;
 }

 shmem = drm_gem_shmem_create_with_handle(file, dev, args->size, &args->handle);

 return PTR_ERR_OR_ZERO(shmem);
}
