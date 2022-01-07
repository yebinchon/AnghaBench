
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vic {int dev; int channel; } ;
struct tegra_drm_context {int channel; } ;
struct tegra_drm_client {int dummy; } ;


 int ENOMEM ;
 int host1x_channel_get (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 struct vic* to_vic (struct tegra_drm_client*) ;
 int vic_boot (struct vic*) ;
 int vic_load_firmware (struct vic*) ;

__attribute__((used)) static int vic_open_channel(struct tegra_drm_client *client,
       struct tegra_drm_context *context)
{
 struct vic *vic = to_vic(client);
 int err;

 err = pm_runtime_get_sync(vic->dev);
 if (err < 0)
  return err;

 err = vic_load_firmware(vic);
 if (err < 0)
  goto rpm_put;

 err = vic_boot(vic);
 if (err < 0)
  goto rpm_put;

 context->channel = host1x_channel_get(vic->channel);
 if (!context->channel) {
  err = -ENOMEM;
  goto rpm_put;
 }

 return 0;

rpm_put:
 pm_runtime_put(vic->dev);
 return err;
}
