
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_hdmi {int dummy; } ;
struct device {int dummy; } ;


 int AUD_EN ;
 int AUD_IN_EN ;
 struct zx_hdmi* dev_get_drvdata (struct device*) ;
 int hdmi_writeb_mask (struct zx_hdmi*,int ,int ,int ) ;

__attribute__((used)) static void zx_hdmi_audio_shutdown(struct device *dev, void *data)
{
 struct zx_hdmi *hdmi = dev_get_drvdata(dev);


 hdmi_writeb_mask(hdmi, AUD_EN, AUD_IN_EN, 0);
}
