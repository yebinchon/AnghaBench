
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vic {int * domain; int channel; } ;
struct tegra_drm_client {int dummy; } ;
struct tegra_drm {int dummy; } ;
struct iommu_group {int dummy; } ;
struct host1x_client {int * syncpts; int parent; int dev; } ;
struct drm_device {struct tegra_drm* dev_private; } ;


 struct drm_device* dev_get_drvdata (int ) ;
 int host1x_channel_put (int ) ;
 int host1x_syncpt_free (int ) ;
 struct tegra_drm_client* host1x_to_drm_client (struct host1x_client*) ;
 int iommu_detach_group (int *,struct iommu_group*) ;
 struct iommu_group* iommu_group_get (int ) ;
 int tegra_drm_unregister_client (struct tegra_drm*,struct tegra_drm_client*) ;
 struct vic* to_vic (struct tegra_drm_client*) ;

__attribute__((used)) static int vic_exit(struct host1x_client *client)
{
 struct tegra_drm_client *drm = host1x_to_drm_client(client);
 struct iommu_group *group = iommu_group_get(client->dev);
 struct drm_device *dev = dev_get_drvdata(client->parent);
 struct tegra_drm *tegra = dev->dev_private;
 struct vic *vic = to_vic(drm);
 int err;

 err = tegra_drm_unregister_client(tegra, drm);
 if (err < 0)
  return err;

 host1x_syncpt_free(client->syncpts[0]);
 host1x_channel_put(vic->channel);

 if (vic->domain) {
  iommu_detach_group(vic->domain, group);
  vic->domain = ((void*)0);
 }

 return 0;
}
