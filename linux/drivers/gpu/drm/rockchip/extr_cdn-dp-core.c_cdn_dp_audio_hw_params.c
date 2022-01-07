
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_codec_params {int channels; int sample_rate; int sample_width; } ;
struct hdmi_codec_daifmt {int fmt; } ;
struct device {int dummy; } ;
struct audio_info {int format; int channels; int sample_rate; int sample_width; } ;
struct cdn_dp_device {int lock; struct audio_info audio_info; int active; } ;


 int AFMT_I2S ;
 int AFMT_SPDIF ;
 int DRM_DEV_ERROR (struct device*,char*,int) ;
 int EINVAL ;
 int ENODEV ;


 int cdn_dp_audio_config (struct cdn_dp_device*,struct audio_info*) ;
 struct cdn_dp_device* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cdn_dp_audio_hw_params(struct device *dev, void *data,
      struct hdmi_codec_daifmt *daifmt,
      struct hdmi_codec_params *params)
{
 struct cdn_dp_device *dp = dev_get_drvdata(dev);
 struct audio_info audio = {
  .sample_width = params->sample_width,
  .sample_rate = params->sample_rate,
  .channels = params->channels,
 };
 int ret;

 mutex_lock(&dp->lock);
 if (!dp->active) {
  ret = -ENODEV;
  goto out;
 }

 switch (daifmt->fmt) {
 case 129:
  audio.format = AFMT_I2S;
  break;
 case 128:
  audio.format = AFMT_SPDIF;
  break;
 default:
  DRM_DEV_ERROR(dev, "Invalid format %d\n", daifmt->fmt);
  ret = -EINVAL;
  goto out;
 }

 ret = cdn_dp_audio_config(dp, &audio);
 if (!ret)
  dp->audio_info = audio;

out:
 mutex_unlock(&dp->lock);
 return ret;
}
