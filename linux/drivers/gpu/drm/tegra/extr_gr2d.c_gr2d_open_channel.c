
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm_context {int channel; } ;
struct tegra_drm_client {int dummy; } ;
struct gr2d {int channel; } ;


 int ENOMEM ;
 int host1x_channel_get (int ) ;
 struct gr2d* to_gr2d (struct tegra_drm_client*) ;

__attribute__((used)) static int gr2d_open_channel(struct tegra_drm_client *client,
        struct tegra_drm_context *context)
{
 struct gr2d *gr2d = to_gr2d(client);

 context->channel = host1x_channel_get(gr2d->channel);
 if (!context->channel)
  return -ENOMEM;

 return 0;
}
