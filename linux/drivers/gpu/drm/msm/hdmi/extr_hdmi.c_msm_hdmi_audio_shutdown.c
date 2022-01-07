
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi {int dummy; } ;
struct device {int dummy; } ;


 struct hdmi* dev_get_drvdata (struct device*) ;
 int msm_hdmi_audio_info_setup (struct hdmi*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void msm_hdmi_audio_shutdown(struct device *dev, void *data)
{
 struct hdmi *hdmi = dev_get_drvdata(dev);

 msm_hdmi_audio_info_setup(hdmi, 0, 0, 0, 0, 0);
}
