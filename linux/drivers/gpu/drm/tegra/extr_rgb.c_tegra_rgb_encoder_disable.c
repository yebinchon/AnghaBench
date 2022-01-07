
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_rgb {int dc; } ;
struct tegra_output {scalar_t__ panel; } ;
struct drm_encoder {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int drm_panel_disable (scalar_t__) ;
 int drm_panel_unprepare (scalar_t__) ;
 struct tegra_output* encoder_to_output (struct drm_encoder*) ;
 int rgb_disable ;
 int tegra_dc_commit (int ) ;
 int tegra_dc_write_regs (int ,int ,int ) ;
 struct tegra_rgb* to_rgb (struct tegra_output*) ;

__attribute__((used)) static void tegra_rgb_encoder_disable(struct drm_encoder *encoder)
{
 struct tegra_output *output = encoder_to_output(encoder);
 struct tegra_rgb *rgb = to_rgb(output);

 if (output->panel)
  drm_panel_disable(output->panel);

 tegra_dc_write_regs(rgb->dc, rgb_disable, ARRAY_SIZE(rgb_disable));
 tegra_dc_commit(rgb->dc);

 if (output->panel)
  drm_panel_unprepare(output->panel);
}
