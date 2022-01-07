
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bo {int gem; } ;
struct host1x_bo {int dummy; } ;


 int drm_gem_object_put_unlocked (int *) ;
 struct tegra_bo* host1x_to_tegra_bo (struct host1x_bo*) ;

__attribute__((used)) static void tegra_bo_put(struct host1x_bo *bo)
{
 struct tegra_bo *obj = host1x_to_tegra_bo(bo);

 drm_gem_object_put_unlocked(&obj->gem);
}
