
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_audio_param {int aud_input_chan_type; int aud_mclk; int aud_i2s_fmt; int aud_input_type; int aud_sampe_size; int aud_codec; } ;
struct mtk_hdmi {int csp; struct hdmi_audio_param aud_param; } ;


 int HDMI_AUDIO_CODING_TYPE_PCM ;
 int HDMI_AUDIO_SAMPLE_SIZE_16 ;
 int HDMI_AUD_CHAN_TYPE_2_0 ;
 int HDMI_AUD_INPUT_I2S ;
 int HDMI_AUD_MCLK_128FS ;
 int HDMI_COLORSPACE_RGB ;
 int HDMI_I2S_MODE_I2S_24BIT ;

__attribute__((used)) static int mtk_hdmi_output_init(struct mtk_hdmi *hdmi)
{
 struct hdmi_audio_param *aud_param = &hdmi->aud_param;

 hdmi->csp = HDMI_COLORSPACE_RGB;
 aud_param->aud_codec = HDMI_AUDIO_CODING_TYPE_PCM;
 aud_param->aud_sampe_size = HDMI_AUDIO_SAMPLE_SIZE_16;
 aud_param->aud_input_type = HDMI_AUD_INPUT_I2S;
 aud_param->aud_i2s_fmt = HDMI_I2S_MODE_I2S_24BIT;
 aud_param->aud_mclk = HDMI_AUD_MCLK_128FS;
 aud_param->aud_input_chan_type = HDMI_AUD_CHAN_TYPE_2_0;

 return 0;
}
