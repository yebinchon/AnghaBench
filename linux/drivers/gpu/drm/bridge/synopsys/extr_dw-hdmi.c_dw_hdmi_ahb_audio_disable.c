
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int audio_cts; } ;


 int hdmi_set_cts_n (struct dw_hdmi*,int ,int ) ;

__attribute__((used)) static void dw_hdmi_ahb_audio_disable(struct dw_hdmi *hdmi)
{
 hdmi_set_cts_n(hdmi, hdmi->audio_cts, 0);
}
