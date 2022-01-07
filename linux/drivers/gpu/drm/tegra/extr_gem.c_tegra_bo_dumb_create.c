
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm {int pitch_align; } ;
struct tegra_bo {int dummy; } ;
struct drm_mode_create_dumb {int width; int bpp; int pitch; int size; int height; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct tegra_drm* dev_private; } ;


 unsigned int DIV_ROUND_UP (int,int) ;
 scalar_t__ IS_ERR (struct tegra_bo*) ;
 int PTR_ERR (struct tegra_bo*) ;
 int round_up (unsigned int,int ) ;
 struct tegra_bo* tegra_bo_create_with_handle (struct drm_file*,struct drm_device*,int,int ,int *) ;

int tegra_bo_dumb_create(struct drm_file *file, struct drm_device *drm,
    struct drm_mode_create_dumb *args)
{
 unsigned int min_pitch = DIV_ROUND_UP(args->width * args->bpp, 8);
 struct tegra_drm *tegra = drm->dev_private;
 struct tegra_bo *bo;

 args->pitch = round_up(min_pitch, tegra->pitch_align);
 args->size = args->pitch * args->height;

 bo = tegra_bo_create_with_handle(file, drm, args->size, 0,
      &args->handle);
 if (IS_ERR(bo))
  return PTR_ERR(bo);

 return 0;
}
