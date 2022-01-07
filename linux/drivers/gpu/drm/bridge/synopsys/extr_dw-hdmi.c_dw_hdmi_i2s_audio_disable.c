
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int dummy; } ;


 int hdmi_enable_audio_clk (struct dw_hdmi*,int) ;

__attribute__((used)) static void dw_hdmi_i2s_audio_disable(struct dw_hdmi *hdmi)
{
 hdmi_enable_audio_clk(hdmi, 0);
}
