
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_hdmi {int dummy; } ;
struct device {int dummy; } ;


 int TPI_AUD_CONFIG ;
 int TPI_AUD_MUTE ;
 struct zx_hdmi* dev_get_drvdata (struct device*) ;
 int hdmi_writeb_mask (struct zx_hdmi*,int ,int ,int ) ;

__attribute__((used)) static int zx_hdmi_audio_digital_mute(struct device *dev, void *data,
          bool enable)
{
 struct zx_hdmi *hdmi = dev_get_drvdata(dev);

 if (enable)
  hdmi_writeb_mask(hdmi, TPI_AUD_CONFIG, TPI_AUD_MUTE,
     TPI_AUD_MUTE);
 else
  hdmi_writeb_mask(hdmi, TPI_AUD_CONFIG, TPI_AUD_MUTE, 0);

 return 0;
}
