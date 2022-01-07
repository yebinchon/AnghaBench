
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_hdmi {int dummy; } ;
struct device {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,char*) ;
 int HDMI_SAMPLE_FLAT_ALL ;
 int HDMI_SAMPLE_FLAT_MASK ;
 int HDMI_SAMPLE_FLAT_NO ;
 struct sti_hdmi* dev_get_drvdata (struct device*) ;
 int hdmi_write (struct sti_hdmi*,int ,int ) ;

__attribute__((used)) static int hdmi_audio_digital_mute(struct device *dev, void *data, bool enable)
{
 struct sti_hdmi *hdmi = dev_get_drvdata(dev);

 DRM_DEBUG_DRIVER("%s\n", enable ? "enable" : "disable");

 if (enable)
  hdmi_write(hdmi, HDMI_SAMPLE_FLAT_ALL, HDMI_SAMPLE_FLAT_MASK);
 else
  hdmi_write(hdmi, HDMI_SAMPLE_FLAT_NO, HDMI_SAMPLE_FLAT_MASK);

 return 0;
}
