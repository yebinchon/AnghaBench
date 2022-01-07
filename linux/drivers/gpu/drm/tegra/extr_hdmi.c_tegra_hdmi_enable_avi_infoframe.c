
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_hdmi {int dummy; } ;


 int HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_CTRL ;
 int INFOFRAME_CTRL_ENABLE ;
 int tegra_hdmi_readl (struct tegra_hdmi*,int ) ;
 int tegra_hdmi_writel (struct tegra_hdmi*,int ,int ) ;

__attribute__((used)) static void tegra_hdmi_enable_avi_infoframe(struct tegra_hdmi *hdmi)
{
 u32 value;

 value = tegra_hdmi_readl(hdmi, HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_CTRL);
 value |= INFOFRAME_CTRL_ENABLE;
 tegra_hdmi_writel(hdmi, value, HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_CTRL);
}
