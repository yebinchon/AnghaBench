
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_rgb {int dc; } ;
struct tegra_output {scalar_t__ panel; } ;
struct drm_encoder {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int DC_COM_PIN_OUTPUT_POLARITY (int) ;
 int DC_DISP_DATA_ENABLE_OPTIONS ;
 int DC_DISP_DISP_INTERFACE_CONTROL ;
 int DC_DISP_SHIFT_CLOCK_OPTIONS ;
 int DE_CONTROL_NORMAL ;
 int DE_SELECT_ACTIVE ;
 int DISP_ALIGNMENT_MSB ;
 int DISP_DATA_FORMAT_DF1P1C ;
 int DISP_ORDER_RED_BLUE ;
 int LHS_OUTPUT_POLARITY_LOW ;
 int LVS_OUTPUT_POLARITY_LOW ;
 int SC0_H_QUALIFIER_NONE ;
 int SC1_H_QUALIFIER_NONE ;
 int drm_panel_enable (scalar_t__) ;
 int drm_panel_prepare (scalar_t__) ;
 struct tegra_output* encoder_to_output (struct drm_encoder*) ;
 int rgb_enable ;
 int tegra_dc_commit (int ) ;
 int tegra_dc_readl (int ,int ) ;
 int tegra_dc_write_regs (int ,int ,int ) ;
 int tegra_dc_writel (int ,int,int ) ;
 struct tegra_rgb* to_rgb (struct tegra_output*) ;

__attribute__((used)) static void tegra_rgb_encoder_enable(struct drm_encoder *encoder)
{
 struct tegra_output *output = encoder_to_output(encoder);
 struct tegra_rgb *rgb = to_rgb(output);
 u32 value;

 if (output->panel)
  drm_panel_prepare(output->panel);

 tegra_dc_write_regs(rgb->dc, rgb_enable, ARRAY_SIZE(rgb_enable));

 value = DE_SELECT_ACTIVE | DE_CONTROL_NORMAL;
 tegra_dc_writel(rgb->dc, value, DC_DISP_DATA_ENABLE_OPTIONS);


 value = tegra_dc_readl(rgb->dc, DC_COM_PIN_OUTPUT_POLARITY(1));
 value &= ~LVS_OUTPUT_POLARITY_LOW;
 value &= ~LHS_OUTPUT_POLARITY_LOW;
 tegra_dc_writel(rgb->dc, value, DC_COM_PIN_OUTPUT_POLARITY(1));


 value = DISP_DATA_FORMAT_DF1P1C | DISP_ALIGNMENT_MSB |
  DISP_ORDER_RED_BLUE;
 tegra_dc_writel(rgb->dc, value, DC_DISP_DISP_INTERFACE_CONTROL);


 value = SC0_H_QUALIFIER_NONE | SC1_H_QUALIFIER_NONE;
 tegra_dc_writel(rgb->dc, value, DC_DISP_SHIFT_CLOCK_OPTIONS);

 tegra_dc_commit(rgb->dc);

 if (output->panel)
  drm_panel_enable(output->panel);
}
