
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tmds_config {int peak_current; int drive_current; int pe_current; int pll1; int pll0; } ;
struct tegra_hdmi {TYPE_1__* config; } ;
struct TYPE_2__ {scalar_t__ has_sor_io_peak_current; int fuse_override_offset; int fuse_override_value; } ;


 int HDMI_NV_PDISP_PE_CURRENT ;
 int HDMI_NV_PDISP_SOR_IO_PEAK_CURRENT ;
 int HDMI_NV_PDISP_SOR_LANE_DRIVE_CURRENT ;
 int HDMI_NV_PDISP_SOR_PLL0 ;
 int HDMI_NV_PDISP_SOR_PLL1 ;
 int tegra_hdmi_readl (struct tegra_hdmi*,int ) ;
 int tegra_hdmi_writel (struct tegra_hdmi*,int ,int ) ;

__attribute__((used)) static void tegra_hdmi_setup_tmds(struct tegra_hdmi *hdmi,
      const struct tmds_config *tmds)
{
 u32 value;

 tegra_hdmi_writel(hdmi, tmds->pll0, HDMI_NV_PDISP_SOR_PLL0);
 tegra_hdmi_writel(hdmi, tmds->pll1, HDMI_NV_PDISP_SOR_PLL1);
 tegra_hdmi_writel(hdmi, tmds->pe_current, HDMI_NV_PDISP_PE_CURRENT);

 tegra_hdmi_writel(hdmi, tmds->drive_current,
     HDMI_NV_PDISP_SOR_LANE_DRIVE_CURRENT);

 value = tegra_hdmi_readl(hdmi, hdmi->config->fuse_override_offset);
 value |= hdmi->config->fuse_override_value;
 tegra_hdmi_writel(hdmi, value, hdmi->config->fuse_override_offset);

 if (hdmi->config->has_sor_io_peak_current)
  tegra_hdmi_writel(hdmi, tmds->peak_current,
      HDMI_NV_PDISP_SOR_IO_PEAK_CURRENT);
}
