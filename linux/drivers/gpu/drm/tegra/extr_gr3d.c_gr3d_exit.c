
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm_client {int dummy; } ;
struct host1x_client {int * syncpts; int parent; } ;
struct gr3d {int channel; int group; } ;
struct drm_device {int dev_private; } ;


 struct drm_device* dev_get_drvdata (int ) ;
 int host1x_channel_put (int ) ;
 int host1x_client_iommu_detach (struct host1x_client*,int ) ;
 int host1x_syncpt_free (int ) ;
 struct tegra_drm_client* host1x_to_drm_client (struct host1x_client*) ;
 int tegra_drm_unregister_client (int ,struct tegra_drm_client*) ;
 struct gr3d* to_gr3d (struct tegra_drm_client*) ;

__attribute__((used)) static int gr3d_exit(struct host1x_client *client)
{
 struct tegra_drm_client *drm = host1x_to_drm_client(client);
 struct drm_device *dev = dev_get_drvdata(client->parent);
 struct gr3d *gr3d = to_gr3d(drm);
 int err;

 err = tegra_drm_unregister_client(dev->dev_private, drm);
 if (err < 0)
  return err;

 host1x_client_iommu_detach(client, gr3d->group);
 host1x_syncpt_free(client->syncpts[0]);
 host1x_channel_put(gr3d->channel);

 return 0;
}
