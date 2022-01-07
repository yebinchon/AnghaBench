
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct malidp_drm {int dev; } ;
struct drm_mode_create_dumb {int width; int bpp; int pitch; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct malidp_drm* dev_private; } ;


 int ALIGN (int ,int ) ;
 int DIV_ROUND_UP (int,int) ;
 int drm_gem_cma_dumb_create_internal (struct drm_file*,struct drm_device*,struct drm_mode_create_dumb*) ;
 int malidp_hw_get_pitch_align (int ,int) ;

__attribute__((used)) static int malidp_dumb_create(struct drm_file *file_priv,
         struct drm_device *drm,
         struct drm_mode_create_dumb *args)
{
 struct malidp_drm *malidp = drm->dev_private;

 u8 alignment = malidp_hw_get_pitch_align(malidp->dev, 1);

 args->pitch = ALIGN(DIV_ROUND_UP(args->width * args->bpp, 8), alignment);

 return drm_gem_cma_dumb_create_internal(file_priv, drm, args);
}
