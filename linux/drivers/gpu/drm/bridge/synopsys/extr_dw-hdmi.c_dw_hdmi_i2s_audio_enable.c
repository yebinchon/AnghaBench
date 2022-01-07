
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int audio_n; int audio_cts; } ;


 int hdmi_enable_audio_clk (struct dw_hdmi*,int) ;
 int hdmi_set_cts_n (struct dw_hdmi*,int ,int ) ;

__attribute__((used)) static void dw_hdmi_i2s_audio_enable(struct dw_hdmi *hdmi)
{
 hdmi_set_cts_n(hdmi, hdmi->audio_cts, hdmi->audio_n);
 hdmi_enable_audio_clk(hdmi, 1);
}
