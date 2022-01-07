
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_device {int dummy; } ;
struct drm_mode_create_dumb {int width; int bpp; int pitch; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct rcar_du_device* dev_private; } ;


 unsigned int DIV_ROUND_UP (int,int) ;
 int RCAR_DU_QUIRK_ALIGN_128B ;
 int drm_gem_cma_dumb_create_internal (struct drm_file*,struct drm_device*,struct drm_mode_create_dumb*) ;
 scalar_t__ rcar_du_needs (struct rcar_du_device*,int ) ;
 int roundup (unsigned int,unsigned int) ;

int rcar_du_dumb_create(struct drm_file *file, struct drm_device *dev,
   struct drm_mode_create_dumb *args)
{
 struct rcar_du_device *rcdu = dev->dev_private;
 unsigned int min_pitch = DIV_ROUND_UP(args->width * args->bpp, 8);
 unsigned int align;





 if (rcar_du_needs(rcdu, RCAR_DU_QUIRK_ALIGN_128B))
  align = 128;
 else
  align = 16 * args->bpp / 8;

 args->pitch = roundup(min_pitch, align);

 return drm_gem_cma_dumb_create_internal(file, dev, args);
}
