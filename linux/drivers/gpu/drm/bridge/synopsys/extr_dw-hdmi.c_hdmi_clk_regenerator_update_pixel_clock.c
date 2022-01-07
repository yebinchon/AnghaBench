
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mtmdsclock; } ;
struct TYPE_4__ {TYPE_1__ video_mode; } ;
struct dw_hdmi {int audio_mutex; int sample_rate; TYPE_2__ hdmi_data; } ;


 int hdmi_set_clk_regenerator (struct dw_hdmi*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void hdmi_clk_regenerator_update_pixel_clock(struct dw_hdmi *hdmi)
{
 mutex_lock(&hdmi->audio_mutex);
 hdmi_set_clk_regenerator(hdmi, hdmi->hdmi_data.video_mode.mtmdsclock,
     hdmi->sample_rate);
 mutex_unlock(&hdmi->audio_mutex);
}
