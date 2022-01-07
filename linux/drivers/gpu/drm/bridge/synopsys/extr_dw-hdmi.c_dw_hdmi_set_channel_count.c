
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct dw_hdmi {int audio_mutex; } ;


 int HDMI_FC_AUDICONF0 ;
 int HDMI_FC_AUDICONF0_CC_MASK ;
 unsigned int HDMI_FC_AUDICONF0_CC_OFFSET ;
 int HDMI_FC_AUDSCONF ;
 unsigned int HDMI_FC_AUDSCONF_AUD_PACKET_LAYOUT_LAYOUT0 ;
 unsigned int HDMI_FC_AUDSCONF_AUD_PACKET_LAYOUT_LAYOUT1 ;
 int HDMI_FC_AUDSCONF_AUD_PACKET_LAYOUT_MASK ;
 int hdmi_modb (struct dw_hdmi*,unsigned int,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void dw_hdmi_set_channel_count(struct dw_hdmi *hdmi, unsigned int cnt)
{
 u8 layout;

 mutex_lock(&hdmi->audio_mutex);





 if (cnt > 2)
  layout = HDMI_FC_AUDSCONF_AUD_PACKET_LAYOUT_LAYOUT1;
 else
  layout = HDMI_FC_AUDSCONF_AUD_PACKET_LAYOUT_LAYOUT0;

 hdmi_modb(hdmi, layout, HDMI_FC_AUDSCONF_AUD_PACKET_LAYOUT_MASK,
    HDMI_FC_AUDSCONF);


 hdmi_modb(hdmi, (cnt - 1) << HDMI_FC_AUDICONF0_CC_OFFSET,
    HDMI_FC_AUDICONF0_CC_MASK, HDMI_FC_AUDICONF0);

 mutex_unlock(&hdmi->audio_mutex);
}
