
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_audio {int rate; } ;
struct hdmi {struct hdmi_audio audio; } ;


 int MSM_HDMI_SAMPLE_RATE_MAX ;
 int msm_hdmi_audio_update (struct hdmi*) ;

void msm_hdmi_audio_set_sample_rate(struct hdmi *hdmi, int rate)
{
 struct hdmi_audio *audio;

 if (!hdmi)
  return;

 audio = &hdmi->audio;

 if ((rate < 0) || (rate >= MSM_HDMI_SAMPLE_RATE_MAX))
  return;

 audio->rate = rate;
 msm_hdmi_audio_update(hdmi);
}
