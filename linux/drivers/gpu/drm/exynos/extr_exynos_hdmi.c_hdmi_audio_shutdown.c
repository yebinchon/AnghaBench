
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mute; } ;
struct hdmi_context {int mutex; scalar_t__ powered; TYPE_1__ audio; } ;
struct device {int dummy; } ;


 struct hdmi_context* dev_get_drvdata (struct device*) ;
 int hdmi_audio_control (struct hdmi_context*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void hdmi_audio_shutdown(struct device *dev, void *data)
{
 struct hdmi_context *hdata = dev_get_drvdata(dev);

 mutex_lock(&hdata->mutex);

 hdata->audio.mute = 1;

 if (hdata->powered)
  hdmi_audio_control(hdata);

 mutex_unlock(&hdata->mutex);
}
