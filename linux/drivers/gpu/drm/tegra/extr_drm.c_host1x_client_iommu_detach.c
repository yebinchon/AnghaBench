
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm {struct iommu_group* group; int domain; } ;
struct iommu_group {int dummy; } ;
struct host1x_client {int parent; } ;
struct drm_device {struct tegra_drm* dev_private; } ;


 struct drm_device* dev_get_drvdata (int ) ;
 int iommu_detach_group (int ,struct iommu_group*) ;
 int iommu_group_put (struct iommu_group*) ;

void host1x_client_iommu_detach(struct host1x_client *client,
    struct iommu_group *group)
{
 struct drm_device *drm = dev_get_drvdata(client->parent);
 struct tegra_drm *tegra = drm->dev_private;

 if (group) {
  if (group == tegra->group) {
   iommu_detach_group(tegra->domain, group);
   tegra->group = ((void*)0);
  }

  iommu_group_put(group);
 }
}
