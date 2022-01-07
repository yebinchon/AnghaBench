
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_output {int dummy; } ;
struct tegra_hdmi {int clk_parent; } ;
struct drm_display_mode {int clock; } ;
struct drm_connector {int dummy; } ;
struct clk {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_NOCLOCK ;
 int MODE_OK ;
 struct clk* clk_get_parent (int ) ;
 long clk_round_rate (struct clk*,unsigned long) ;
 struct tegra_output* connector_to_output (struct drm_connector*) ;
 struct tegra_hdmi* to_hdmi (struct tegra_output*) ;

__attribute__((used)) static enum drm_mode_status
tegra_hdmi_connector_mode_valid(struct drm_connector *connector,
    struct drm_display_mode *mode)
{
 struct tegra_output *output = connector_to_output(connector);
 struct tegra_hdmi *hdmi = to_hdmi(output);
 unsigned long pclk = mode->clock * 1000;
 enum drm_mode_status status = MODE_OK;
 struct clk *parent;
 long err;

 parent = clk_get_parent(hdmi->clk_parent);

 err = clk_round_rate(parent, pclk * 4);
 if (err <= 0)
  status = MODE_NOCLOCK;

 return status;
}
