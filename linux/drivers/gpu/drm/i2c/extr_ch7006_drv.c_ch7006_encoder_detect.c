
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct drm_encoder {TYPE_2__* dev; } ;
struct drm_connector {int base; } ;
struct ch7006_state {int dummy; } ;
struct ch7006_priv {scalar_t__ subconnector; struct ch7006_state state; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_3__ {int tv_subconnector_property; } ;
struct TYPE_4__ {TYPE_1__ mode_config; } ;


 int CH7006_CLKMODE ;
 int CH7006_CLKMODE_MASTER ;
 int CH7006_DETECT ;
 int CH7006_DETECT_CVBS_TEST ;
 int CH7006_DETECT_SENSE ;
 int CH7006_DETECT_SVIDEO_C_TEST ;
 int CH7006_DETECT_SVIDEO_Y_TEST ;
 int CH7006_POWER ;
 int CH7006_POWER_LEVEL ;
 int CH7006_POWER_RESET ;
 scalar_t__ DRM_MODE_SUBCONNECTOR_Composite ;
 scalar_t__ DRM_MODE_SUBCONNECTOR_SCART ;
 scalar_t__ DRM_MODE_SUBCONNECTOR_SVIDEO ;
 scalar_t__ DRM_MODE_SUBCONNECTOR_Unknown ;
 int NORMAL ;
 int bitfs (int ,int ) ;
 int ch7006_dbg (struct i2c_client*,char*) ;
 int ch7006_load_reg (struct i2c_client*,struct ch7006_state*,int ) ;
 int ch7006_read (struct i2c_client*,int ) ;
 int ch7006_save_reg (struct i2c_client*,struct ch7006_state*,int ) ;
 int ch7006_write (struct i2c_client*,int ,int) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 struct i2c_client* drm_i2c_encoder_get_client (struct drm_encoder*) ;
 int drm_object_property_set_value (int *,int ,scalar_t__) ;
 struct ch7006_priv* to_ch7006_priv (struct drm_encoder*) ;

__attribute__((used)) static enum drm_connector_status ch7006_encoder_detect(struct drm_encoder *encoder,
             struct drm_connector *connector)
{
 struct i2c_client *client = drm_i2c_encoder_get_client(encoder);
 struct ch7006_priv *priv = to_ch7006_priv(encoder);
 struct ch7006_state *state = &priv->state;
 int det;

 ch7006_dbg(client, "\n");

 ch7006_save_reg(client, state, CH7006_DETECT);
 ch7006_save_reg(client, state, CH7006_POWER);
 ch7006_save_reg(client, state, CH7006_CLKMODE);

 ch7006_write(client, CH7006_POWER, CH7006_POWER_RESET |
        bitfs(CH7006_POWER_LEVEL, NORMAL));
 ch7006_write(client, CH7006_CLKMODE, CH7006_CLKMODE_MASTER);

 ch7006_write(client, CH7006_DETECT, CH7006_DETECT_SENSE);

 ch7006_write(client, CH7006_DETECT, 0);

 det = ch7006_read(client, CH7006_DETECT);

 ch7006_load_reg(client, state, CH7006_CLKMODE);
 ch7006_load_reg(client, state, CH7006_POWER);
 ch7006_load_reg(client, state, CH7006_DETECT);

 if ((det & (CH7006_DETECT_SVIDEO_Y_TEST|
      CH7006_DETECT_SVIDEO_C_TEST|
      CH7006_DETECT_CVBS_TEST)) == 0)
  priv->subconnector = DRM_MODE_SUBCONNECTOR_SCART;
 else if ((det & (CH7006_DETECT_SVIDEO_Y_TEST|
    CH7006_DETECT_SVIDEO_C_TEST)) == 0)
  priv->subconnector = DRM_MODE_SUBCONNECTOR_SVIDEO;
 else if ((det & CH7006_DETECT_CVBS_TEST) == 0)
  priv->subconnector = DRM_MODE_SUBCONNECTOR_Composite;
 else
  priv->subconnector = DRM_MODE_SUBCONNECTOR_Unknown;

 drm_object_property_set_value(&connector->base,
   encoder->dev->mode_config.tv_subconnector_property,
       priv->subconnector);

 return priv->subconnector ? connector_status_connected :
     connector_status_disconnected;
}
