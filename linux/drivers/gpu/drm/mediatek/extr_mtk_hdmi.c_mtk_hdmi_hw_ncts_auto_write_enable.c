
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int dummy; } ;


 int GRL_CTS_CTRL ;
 int NCTS_WRI_ANYTIME ;
 int mtk_hdmi_mask (struct mtk_hdmi*,int ,int ,int ) ;

__attribute__((used)) static void mtk_hdmi_hw_ncts_auto_write_enable(struct mtk_hdmi *hdmi,
            bool enable)
{
 mtk_hdmi_mask(hdmi, GRL_CTS_CTRL, enable ? NCTS_WRI_ANYTIME : 0,
        NCTS_WRI_ANYTIME);
}
