
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct host1x_bo {int dummy; } ;
struct tegra_bo {struct host1x_bo base; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;


 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 struct tegra_bo* to_tegra_bo (struct drm_gem_object*) ;

__attribute__((used)) static struct host1x_bo *
host1x_bo_lookup(struct drm_file *file, u32 handle)
{
 struct drm_gem_object *gem;
 struct tegra_bo *bo;

 gem = drm_gem_object_lookup(file, handle);
 if (!gem)
  return ((void*)0);

 bo = to_tegra_bo(gem);
 return &bo->base;
}
