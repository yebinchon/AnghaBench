
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int audio_mutex; int sample_rate; } ;


 int hdmi_set_clk_regenerator (struct dw_hdmi*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void hdmi_init_clk_regenerator(struct dw_hdmi *hdmi)
{
 mutex_lock(&hdmi->audio_mutex);
 hdmi_set_clk_regenerator(hdmi, 74250000, hdmi->sample_rate);
 mutex_unlock(&hdmi->audio_mutex);
}
