
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int SIL164_DETECT ;
 int SIL164_DETECT_HOTPLUG_STAT ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 struct i2c_client* drm_i2c_encoder_get_client (struct drm_encoder*) ;
 int sil164_read (struct i2c_client*,int ) ;

__attribute__((used)) static enum drm_connector_status
sil164_encoder_detect(struct drm_encoder *encoder,
        struct drm_connector *connector)
{
 struct i2c_client *client = drm_i2c_encoder_get_client(encoder);

 if (sil164_read(client, SIL164_DETECT) & SIL164_DETECT_HOTPLUG_STAT)
  return connector_status_connected;
 else
  return connector_status_disconnected;
}
