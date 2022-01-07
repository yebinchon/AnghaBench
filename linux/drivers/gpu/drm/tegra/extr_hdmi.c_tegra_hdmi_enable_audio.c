
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_hdmi {int dummy; } ;


 int GENERIC_CTRL_AUDIO ;
 int HDMI_NV_PDISP_HDMI_GENERIC_CTRL ;
 int tegra_hdmi_readl (struct tegra_hdmi*,int ) ;
 int tegra_hdmi_writel (struct tegra_hdmi*,int ,int ) ;

__attribute__((used)) static void tegra_hdmi_enable_audio(struct tegra_hdmi *hdmi)
{
 u32 value;

 value = tegra_hdmi_readl(hdmi, HDMI_NV_PDISP_HDMI_GENERIC_CTRL);
 value |= GENERIC_CTRL_AUDIO;
 tegra_hdmi_writel(hdmi, value, HDMI_NV_PDISP_HDMI_GENERIC_CTRL);
}
