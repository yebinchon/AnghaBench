
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct mtk_hdmi {int dev; int * clk; } ;


 scalar_t__ DIV_ROUND_CLOSEST (unsigned long,int) ;
 size_t MTK_HDMI_CLK_HDMI_PLL ;
 unsigned long clk_get_rate (int ) ;
 int clk_set_rate (int ,unsigned long) ;
 int dev_dbg (int ,char*,unsigned long,unsigned long) ;
 int dev_err (int ,char*,unsigned long,int) ;
 int dev_warn (int ,char*,unsigned long,unsigned long) ;
 int mtk_hdmi_hw_config_sys (struct mtk_hdmi*) ;
 int mtk_hdmi_hw_set_deep_color_mode (struct mtk_hdmi*) ;

__attribute__((used)) static int mtk_hdmi_video_change_vpll(struct mtk_hdmi *hdmi, u32 clock)
{
 unsigned long rate;
 int ret;


 ret = clk_set_rate(hdmi->clk[MTK_HDMI_CLK_HDMI_PLL], clock);
 if (ret) {
  dev_err(hdmi->dev, "Failed to set PLL to %u Hz: %d\n", clock,
   ret);
  return ret;
 }

 rate = clk_get_rate(hdmi->clk[MTK_HDMI_CLK_HDMI_PLL]);

 if (DIV_ROUND_CLOSEST(rate, 1000) != DIV_ROUND_CLOSEST(clock, 1000))
  dev_warn(hdmi->dev, "Want PLL %u Hz, got %lu Hz\n", clock,
    rate);
 else
  dev_dbg(hdmi->dev, "Want PLL %u Hz, got %lu Hz\n", clock, rate);

 mtk_hdmi_hw_config_sys(hdmi);
 mtk_hdmi_hw_set_deep_color_mode(hdmi);
 return 0;
}
