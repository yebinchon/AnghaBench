
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_hdmi {int mode; int aud_param; int dev; int audio_enable; } ;
struct TYPE_2__ {int sample_rate; } ;
struct hdmi_audio_param {TYPE_1__ codec_params; int aud_input_chan_type; int aud_input_type; int aud_codec; } ;


 int EINVAL ;
 int dev_dbg (int ,char*,int ,int ,int ,int ) ;
 int dev_err (int ,char*) ;
 int memcpy (int *,struct hdmi_audio_param*,int) ;
 int mtk_hdmi_aud_output_config (struct mtk_hdmi*,int *) ;

__attribute__((used)) static int mtk_hdmi_audio_set_param(struct mtk_hdmi *hdmi,
        struct hdmi_audio_param *param)
{
 if (!hdmi->audio_enable) {
  dev_err(hdmi->dev, "hdmi audio is in disable state!\n");
  return -EINVAL;
 }
 dev_dbg(hdmi->dev, "codec:%d, input:%d, channel:%d, fs:%d\n",
  param->aud_codec, param->aud_input_type,
  param->aud_input_chan_type, param->codec_params.sample_rate);
 memcpy(&hdmi->aud_param, param, sizeof(*param));
 return mtk_hdmi_aud_output_config(hdmi, &hdmi->mode);
}
