
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_context {int mutex; } ;
struct drm_encoder {int dummy; } ;


 struct hdmi_context* encoder_to_hdmi (struct drm_encoder*) ;
 int hdmi_conf_apply (struct hdmi_context*) ;
 int hdmiphy_enable (struct hdmi_context*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void hdmi_enable(struct drm_encoder *encoder)
{
 struct hdmi_context *hdata = encoder_to_hdmi(encoder);

 mutex_lock(&hdata->mutex);

 hdmiphy_enable(hdata);
 hdmi_conf_apply(hdata);

 mutex_unlock(&hdata->mutex);
}
