
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_create_dumb {int pitch; int height; int handle; int size; int bpp; int width; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int MSM_BO_SCANOUT ;
 int MSM_BO_WC ;
 int PAGE_ALIGN (int) ;
 int align_pitch (int ,int ) ;
 int msm_gem_new_handle (struct drm_device*,struct drm_file*,int ,int,int *,char*) ;

int msm_gem_dumb_create(struct drm_file *file, struct drm_device *dev,
  struct drm_mode_create_dumb *args)
{
 args->pitch = align_pitch(args->width, args->bpp);
 args->size = PAGE_ALIGN(args->pitch * args->height);
 return msm_gem_new_handle(dev, file, args->size,
   MSM_BO_SCANOUT | MSM_BO_WC, &args->handle, "dumb");
}
