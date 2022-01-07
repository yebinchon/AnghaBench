
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dvo_device {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int SIL164_9_HTPLG ;
 int SIL164_REG9 ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int sil164_readb (struct intel_dvo_device*,int ,int*) ;

__attribute__((used)) static enum drm_connector_status sil164_detect(struct intel_dvo_device *dvo)
{
 u8 reg9;

 sil164_readb(dvo, SIL164_REG9, &reg9);

 if (reg9 & SIL164_9_HTPLG)
  return connector_status_connected;
 else
  return connector_status_disconnected;
}
