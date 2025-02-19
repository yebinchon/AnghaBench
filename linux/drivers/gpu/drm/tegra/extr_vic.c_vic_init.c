
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vic {int channel; scalar_t__ domain; int dev; } ;
struct tegra_drm_client {int dummy; } ;
struct tegra_drm {scalar_t__ domain; } ;
struct iommu_group {int dummy; } ;
struct host1x_client {int * syncpts; int dev; int parent; } ;
struct drm_device {struct tegra_drm* dev_private; } ;


 int ENOMEM ;
 int dev_err (int ,char*,int) ;
 struct drm_device* dev_get_drvdata (int ) ;
 int host1x_channel_put (int ) ;
 int host1x_channel_request (int ) ;
 int host1x_syncpt_free (int ) ;
 int host1x_syncpt_request (struct host1x_client*,int ) ;
 struct tegra_drm_client* host1x_to_drm_client (struct host1x_client*) ;
 int iommu_attach_group (scalar_t__,struct iommu_group*) ;
 int iommu_detach_group (scalar_t__,struct iommu_group*) ;
 struct iommu_group* iommu_group_get (int ) ;
 int tegra_drm_register_client (struct tegra_drm*,struct tegra_drm_client*) ;
 struct vic* to_vic (struct tegra_drm_client*) ;

__attribute__((used)) static int vic_init(struct host1x_client *client)
{
 struct tegra_drm_client *drm = host1x_to_drm_client(client);
 struct iommu_group *group = iommu_group_get(client->dev);
 struct drm_device *dev = dev_get_drvdata(client->parent);
 struct tegra_drm *tegra = dev->dev_private;
 struct vic *vic = to_vic(drm);
 int err;

 if (group && tegra->domain) {
  err = iommu_attach_group(tegra->domain, group);
  if (err < 0) {
   dev_err(vic->dev, "failed to attach to domain: %d\n",
    err);
   return err;
  }

  vic->domain = tegra->domain;
 }

 vic->channel = host1x_channel_request(client->dev);
 if (!vic->channel) {
  err = -ENOMEM;
  goto detach;
 }

 client->syncpts[0] = host1x_syncpt_request(client, 0);
 if (!client->syncpts[0]) {
  err = -ENOMEM;
  goto free_channel;
 }

 err = tegra_drm_register_client(tegra, drm);
 if (err < 0)
  goto free_syncpt;

 return 0;

free_syncpt:
 host1x_syncpt_free(client->syncpts[0]);
free_channel:
 host1x_channel_put(vic->channel);
detach:
 if (group && tegra->domain)
  iommu_detach_group(tegra->domain, group);

 return err;
}
