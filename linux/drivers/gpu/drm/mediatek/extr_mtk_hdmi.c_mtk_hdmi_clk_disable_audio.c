
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int * clk; } ;


 size_t MTK_HDMI_CLK_AUD_BCLK ;
 size_t MTK_HDMI_CLK_AUD_SPDIF ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void mtk_hdmi_clk_disable_audio(struct mtk_hdmi *hdmi)
{
 clk_disable_unprepare(hdmi->clk[MTK_HDMI_CLK_AUD_BCLK]);
 clk_disable_unprepare(hdmi->clk[MTK_HDMI_CLK_AUD_SPDIF]);
}
