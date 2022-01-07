
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int * clk; } ;


 size_t MTK_HDMI_CLK_AUD_BCLK ;
 size_t MTK_HDMI_CLK_AUD_SPDIF ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int mtk_hdmi_clk_enable_audio(struct mtk_hdmi *hdmi)
{
 int ret;

 ret = clk_prepare_enable(hdmi->clk[MTK_HDMI_CLK_AUD_BCLK]);
 if (ret)
  return ret;

 ret = clk_prepare_enable(hdmi->clk[MTK_HDMI_CLK_AUD_SPDIF]);
 if (ret)
  goto err;

 return 0;
err:
 clk_disable_unprepare(hdmi->clk[MTK_HDMI_CLK_AUD_BCLK]);
 return ret;
}
