
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dvo_device {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int TFP410_CTL_2 ;
 int TFP410_CTL_2_RSEN ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 scalar_t__ tfp410_readb (struct intel_dvo_device*,int ,int*) ;

__attribute__((used)) static enum drm_connector_status tfp410_detect(struct intel_dvo_device *dvo)
{
 enum drm_connector_status ret = connector_status_disconnected;
 u8 ctl2;

 if (tfp410_readb(dvo, TFP410_CTL_2, &ctl2)) {
  if (ctl2 & TFP410_CTL_2_RSEN)
   ret = connector_status_connected;
  else
   ret = connector_status_disconnected;
 }

 return ret;
}
