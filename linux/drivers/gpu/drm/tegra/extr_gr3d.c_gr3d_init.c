
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm_client {int dummy; } ;
struct host1x_client {int * syncpts; int dev; int parent; } ;
struct gr3d {int channel; int group; } ;
struct drm_device {int dev_private; } ;


 int ENOMEM ;
 unsigned long HOST1X_SYNCPT_HAS_BASE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*,int) ;
 struct drm_device* dev_get_drvdata (int ) ;
 int host1x_channel_put (int ) ;
 int host1x_channel_request (int ) ;
 int host1x_client_iommu_attach (struct host1x_client*,int) ;
 int host1x_client_iommu_detach (struct host1x_client*,int ) ;
 int host1x_syncpt_free (int ) ;
 int host1x_syncpt_request (struct host1x_client*,unsigned long) ;
 struct tegra_drm_client* host1x_to_drm_client (struct host1x_client*) ;
 int tegra_drm_register_client (int ,struct tegra_drm_client*) ;
 struct gr3d* to_gr3d (struct tegra_drm_client*) ;

__attribute__((used)) static int gr3d_init(struct host1x_client *client)
{
 struct tegra_drm_client *drm = host1x_to_drm_client(client);
 struct drm_device *dev = dev_get_drvdata(client->parent);
 unsigned long flags = HOST1X_SYNCPT_HAS_BASE;
 struct gr3d *gr3d = to_gr3d(drm);
 int err;

 gr3d->channel = host1x_channel_request(client->dev);
 if (!gr3d->channel)
  return -ENOMEM;

 client->syncpts[0] = host1x_syncpt_request(client, flags);
 if (!client->syncpts[0]) {
  err = -ENOMEM;
  dev_err(client->dev, "failed to request syncpoint: %d\n", err);
  goto put;
 }

 gr3d->group = host1x_client_iommu_attach(client, 0);
 if (IS_ERR(gr3d->group)) {
  err = PTR_ERR(gr3d->group);
  dev_err(client->dev, "failed to attach to domain: %d\n", err);
  goto free;
 }

 err = tegra_drm_register_client(dev->dev_private, drm);
 if (err < 0) {
  dev_err(client->dev, "failed to register client: %d\n", err);
  goto detach;
 }

 return 0;

detach:
 host1x_client_iommu_detach(client, gr3d->group);
free:
 host1x_syncpt_free(client->syncpts[0]);
put:
 host1x_channel_put(gr3d->channel);
 return err;
}
