
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int dummy; } ;


 int CFG4_AV_UNMUTE_EN ;
 int CFG4_AV_UNMUTE_SET ;
 int GRL_CFG4 ;
 int mtk_hdmi_mask (struct mtk_hdmi*,int ,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mtk_hdmi_hw_send_av_unmute(struct mtk_hdmi *hdmi)
{
 mtk_hdmi_mask(hdmi, GRL_CFG4, CFG4_AV_UNMUTE_EN,
        CFG4_AV_UNMUTE_EN | CFG4_AV_UNMUTE_SET);
 usleep_range(2000, 4000);
 mtk_hdmi_mask(hdmi, GRL_CFG4, CFG4_AV_UNMUTE_SET,
        CFG4_AV_UNMUTE_EN | CFG4_AV_UNMUTE_SET);
}
