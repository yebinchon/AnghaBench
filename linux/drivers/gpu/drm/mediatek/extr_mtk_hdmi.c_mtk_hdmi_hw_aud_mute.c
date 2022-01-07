
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int dummy; } ;


 int AUDIO_ZERO ;
 int GRL_AUDIO_CFG ;
 int mtk_hdmi_set_bits (struct mtk_hdmi*,int ,int ) ;

__attribute__((used)) static void mtk_hdmi_hw_aud_mute(struct mtk_hdmi *hdmi)
{
 mtk_hdmi_set_bits(hdmi, GRL_AUDIO_CFG, AUDIO_ZERO);
}
