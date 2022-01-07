
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_bo {int gem; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 struct tegra_bo* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct tegra_bo*) ;
 int drm_gem_handle_create (struct drm_file*,int *,int *) ;
 int drm_gem_object_put_unlocked (int *) ;
 struct tegra_bo* tegra_bo_create (struct drm_device*,size_t,unsigned long) ;
 int tegra_bo_free_object (int *) ;

struct tegra_bo *tegra_bo_create_with_handle(struct drm_file *file,
          struct drm_device *drm,
          size_t size,
          unsigned long flags,
          u32 *handle)
{
 struct tegra_bo *bo;
 int err;

 bo = tegra_bo_create(drm, size, flags);
 if (IS_ERR(bo))
  return bo;

 err = drm_gem_handle_create(file, &bo->gem, handle);
 if (err) {
  tegra_bo_free_object(&bo->gem);
  return ERR_PTR(err);
 }

 drm_gem_object_put_unlocked(&bo->gem);

 return bo;
}
