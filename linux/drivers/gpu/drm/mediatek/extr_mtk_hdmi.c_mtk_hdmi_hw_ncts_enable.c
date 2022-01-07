
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int dummy; } ;


 int CTS_CTRL_SOFT ;
 int GRL_CTS_CTRL ;
 int mtk_hdmi_mask (struct mtk_hdmi*,int ,int ,int ) ;

__attribute__((used)) static void mtk_hdmi_hw_ncts_enable(struct mtk_hdmi *hdmi, bool on)
{
 mtk_hdmi_mask(hdmi, GRL_CTS_CTRL, on ? 0 : CTS_CTRL_SOFT,
        CTS_CTRL_SOFT);
}
