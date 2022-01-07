
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct tegra_bo {int gem; int flags; TYPE_1__ tiling; } ;
struct drm_device {int dummy; } ;


 unsigned long DRM_TEGRA_GEM_CREATE_BOTTOM_UP ;
 unsigned long DRM_TEGRA_GEM_CREATE_TILED ;
 struct tegra_bo* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct tegra_bo*) ;
 int TEGRA_BO_BOTTOM_UP ;
 int TEGRA_BO_TILING_MODE_TILED ;
 int drm_gem_object_release (int *) ;
 int kfree (struct tegra_bo*) ;
 int tegra_bo_alloc (struct drm_device*,struct tegra_bo*) ;
 struct tegra_bo* tegra_bo_alloc_object (struct drm_device*,size_t) ;

struct tegra_bo *tegra_bo_create(struct drm_device *drm, size_t size,
     unsigned long flags)
{
 struct tegra_bo *bo;
 int err;

 bo = tegra_bo_alloc_object(drm, size);
 if (IS_ERR(bo))
  return bo;

 err = tegra_bo_alloc(drm, bo);
 if (err < 0)
  goto release;

 if (flags & DRM_TEGRA_GEM_CREATE_TILED)
  bo->tiling.mode = TEGRA_BO_TILING_MODE_TILED;

 if (flags & DRM_TEGRA_GEM_CREATE_BOTTOM_UP)
  bo->flags |= TEGRA_BO_BOTTOM_UP;

 return bo;

release:
 drm_gem_object_release(&bo->gem);
 kfree(bo);
 return ERR_PTR(err);
}
