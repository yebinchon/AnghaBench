
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int dummy; } ;


 int AUDIO_PACKET_OFF ;
 int GRL_SHIFT_R2 ;
 int mtk_hdmi_mask (struct mtk_hdmi*,int ,int ,int ) ;

__attribute__((used)) static void mtk_hdmi_hw_send_aud_packet(struct mtk_hdmi *hdmi, bool enable)
{
 mtk_hdmi_mask(hdmi, GRL_SHIFT_R2, enable ? 0 : AUDIO_PACKET_OFF,
        AUDIO_PACKET_OFF);
}
