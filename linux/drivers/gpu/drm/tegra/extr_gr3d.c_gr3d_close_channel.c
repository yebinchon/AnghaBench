
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm_context {int channel; } ;


 int host1x_channel_put (int ) ;

__attribute__((used)) static void gr3d_close_channel(struct tegra_drm_context *context)
{
 host1x_channel_put(context->channel);
}
