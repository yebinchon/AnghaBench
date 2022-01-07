
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union hdmi_infoframe {int audio; } ;
struct zx_hdmi {int dev; } ;
struct hdmi_audio_infoframe {int dummy; } ;
struct hdmi_codec_params {int sample_width; int sample_rate; struct hdmi_audio_infoframe cea; } ;
struct hdmi_codec_daifmt {int fmt; } ;
struct device {int dummy; } ;


 int AUD_EN ;
 int AUD_IN_EN ;
 int AUD_MODE ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int EINVAL ;
 int FSEL_AUDIO ;
 int HDMI_SPDIF ;
 int N_SVAL1 ;
 int N_SVAL2 ;
 int N_SVAL3 ;
 int SPDIF_EN ;
 int SPDIF_SAMPLE_SIZE_16BIT ;
 int SPDIF_SAMPLE_SIZE_20BIT ;
 int SPDIF_SAMPLE_SIZE_24BIT ;
 int SPDIF_SAMPLE_SIZE_MASK ;
 int TPI_AUD_CONFIG ;
 struct zx_hdmi* dev_get_drvdata (struct device*) ;
 int hdmi_writeb (struct zx_hdmi*,int ,int) ;
 int hdmi_writeb_mask (struct zx_hdmi*,int ,int ,int ) ;
 int memcpy (int *,struct hdmi_audio_infoframe*,int) ;
 int zx_hdmi_audio_get_n (int ) ;
 int zx_hdmi_infoframe_trans (struct zx_hdmi*,union hdmi_infoframe*,int ) ;

__attribute__((used)) static int zx_hdmi_audio_hw_params(struct device *dev,
       void *data,
       struct hdmi_codec_daifmt *daifmt,
       struct hdmi_codec_params *params)
{
 struct zx_hdmi *hdmi = dev_get_drvdata(dev);
 struct hdmi_audio_infoframe *cea = &params->cea;
 union hdmi_infoframe frame;
 int n;


 if (daifmt->fmt != HDMI_SPDIF) {
  DRM_DEV_ERROR(hdmi->dev, "invalid daifmt %d\n", daifmt->fmt);
  return -EINVAL;
 }

 switch (params->sample_width) {
 case 16:
  hdmi_writeb_mask(hdmi, TPI_AUD_CONFIG, SPDIF_SAMPLE_SIZE_MASK,
     SPDIF_SAMPLE_SIZE_16BIT);
  break;
 case 20:
  hdmi_writeb_mask(hdmi, TPI_AUD_CONFIG, SPDIF_SAMPLE_SIZE_MASK,
     SPDIF_SAMPLE_SIZE_20BIT);
  break;
 case 24:
  hdmi_writeb_mask(hdmi, TPI_AUD_CONFIG, SPDIF_SAMPLE_SIZE_MASK,
     SPDIF_SAMPLE_SIZE_24BIT);
  break;
 default:
  DRM_DEV_ERROR(hdmi->dev, "invalid sample width %d\n",
         params->sample_width);
  return -EINVAL;
 }


 n = zx_hdmi_audio_get_n(params->sample_rate);
 hdmi_writeb(hdmi, N_SVAL1, n & 0xff);
 hdmi_writeb(hdmi, N_SVAL2, (n >> 8) & 0xff);
 hdmi_writeb(hdmi, N_SVAL3, (n >> 16) & 0xf);


 hdmi_writeb_mask(hdmi, AUD_MODE, SPDIF_EN, SPDIF_EN);


 hdmi_writeb_mask(hdmi, AUD_EN, AUD_IN_EN, AUD_IN_EN);

 memcpy(&frame.audio, cea, sizeof(*cea));

 return zx_hdmi_infoframe_trans(hdmi, &frame, FSEL_AUDIO);
}
