
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int audio_enable; } ;


 int mtk_hdmi_aud_enable_packet (struct mtk_hdmi*,int) ;

__attribute__((used)) static void mtk_hdmi_audio_enable(struct mtk_hdmi *hdmi)
{
 mtk_hdmi_aud_enable_packet(hdmi, 1);
 hdmi->audio_enable = 1;
}
