
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int dummy; } ;


 int CTRL_AVMUTE ;
 int GRL_CFG4 ;
 int mtk_hdmi_clear_bits (struct mtk_hdmi*,int ,int ) ;
 int mtk_hdmi_set_bits (struct mtk_hdmi*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mtk_hdmi_hw_send_av_mute(struct mtk_hdmi *hdmi)
{
 mtk_hdmi_clear_bits(hdmi, GRL_CFG4, CTRL_AVMUTE);
 usleep_range(2000, 4000);
 mtk_hdmi_set_bits(hdmi, GRL_CFG4, CTRL_AVMUTE);
}
