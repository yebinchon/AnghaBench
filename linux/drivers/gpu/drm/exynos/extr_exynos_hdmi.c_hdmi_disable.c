
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_context {int mutex; int notifier; int hotplug_work; scalar_t__ powered; } ;
struct drm_encoder {int dummy; } ;


 int CEC_PHYS_ADDR_INVALID ;
 int cancel_delayed_work (int *) ;
 int cec_notifier_set_phys_addr (int ,int ) ;
 struct hdmi_context* encoder_to_hdmi (struct drm_encoder*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void hdmi_disable(struct drm_encoder *encoder)
{
 struct hdmi_context *hdata = encoder_to_hdmi(encoder);

 mutex_lock(&hdata->mutex);

 if (hdata->powered) {
  mutex_unlock(&hdata->mutex);
  cancel_delayed_work(&hdata->hotplug_work);
  cec_notifier_set_phys_addr(hdata->notifier,
        CEC_PHYS_ADDR_INVALID);
  return;
 }

 mutex_unlock(&hdata->mutex);
}
