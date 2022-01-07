
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vic {int dev; } ;
struct tegra_drm_context {int channel; int client; } ;


 int host1x_channel_put (int ) ;
 int pm_runtime_put (int ) ;
 struct vic* to_vic (int ) ;

__attribute__((used)) static void vic_close_channel(struct tegra_drm_context *context)
{
 struct vic *vic = to_vic(context->client);

 host1x_channel_put(context->channel);

 pm_runtime_put(vic->dev);
}
