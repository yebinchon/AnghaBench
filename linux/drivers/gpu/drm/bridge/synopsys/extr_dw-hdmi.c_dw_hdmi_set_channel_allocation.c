
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int audio_mutex; } ;


 int HDMI_FC_AUDICONF2 ;
 int hdmi_writeb (struct dw_hdmi*,unsigned int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void dw_hdmi_set_channel_allocation(struct dw_hdmi *hdmi, unsigned int ca)
{
 mutex_lock(&hdmi->audio_mutex);

 hdmi_writeb(hdmi, ca, HDMI_FC_AUDICONF2);

 mutex_unlock(&hdmi->audio_mutex);
}
