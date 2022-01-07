
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm_context {int channel; } ;
struct tegra_drm_client {int dummy; } ;
struct gr3d {int channel; } ;


 int ENOMEM ;
 int host1x_channel_get (int ) ;
 struct gr3d* to_gr3d (struct tegra_drm_client*) ;

__attribute__((used)) static int gr3d_open_channel(struct tegra_drm_client *client,
        struct tegra_drm_context *context)
{
 struct gr3d *gr3d = to_gr3d(client);

 context->channel = host1x_channel_get(gr3d->channel);
 if (!context->channel)
  return -ENOMEM;

 return 0;
}
