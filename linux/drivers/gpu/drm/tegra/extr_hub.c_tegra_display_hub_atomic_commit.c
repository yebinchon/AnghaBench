
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_drm {struct tegra_display_hub* hub; } ;
struct tegra_display_hub_state {scalar_t__ dc; scalar_t__ clk; int rate; } ;
struct TYPE_4__ {int state; } ;
struct TYPE_3__ {struct device* dev; } ;
struct tegra_display_hub {int clk_disp; TYPE_2__ base; TYPE_1__ client; } ;
struct drm_device {struct tegra_drm* dev_private; } ;
struct drm_atomic_state {int dummy; } ;
struct device {int dummy; } ;


 int clk_set_parent (int ,scalar_t__) ;
 int clk_set_rate (scalar_t__,int ) ;
 int dev_err (struct device*,char*,int ,scalar_t__,...) ;
 int tegra_display_hub_update (scalar_t__) ;
 struct tegra_display_hub_state* to_tegra_display_hub_state (int ) ;

void tegra_display_hub_atomic_commit(struct drm_device *drm,
         struct drm_atomic_state *state)
{
 struct tegra_drm *tegra = drm->dev_private;
 struct tegra_display_hub *hub = tegra->hub;
 struct tegra_display_hub_state *hub_state;
 struct device *dev = hub->client.dev;
 int err;

 hub_state = to_tegra_display_hub_state(hub->base.state);

 if (hub_state->clk) {
  err = clk_set_rate(hub_state->clk, hub_state->rate);
  if (err < 0)
   dev_err(dev, "failed to set rate of %pC to %lu Hz\n",
    hub_state->clk, hub_state->rate);

  err = clk_set_parent(hub->clk_disp, hub_state->clk);
  if (err < 0)
   dev_err(dev, "failed to set parent of %pC to %pC: %d\n",
    hub->clk_disp, hub_state->clk, err);
 }

 if (hub_state->dc)
  tegra_display_hub_update(hub_state->dc);
}
