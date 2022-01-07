
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
struct i2c_client {int dummy; } ;
struct drm_property {int dummy; } ;
struct drm_mode_config {struct drm_property* tv_flicker_reduction_property; struct drm_property* tv_contrast_property; struct drm_property* tv_brightness_property; struct drm_property* tv_mode_property; struct drm_property* tv_bottom_margin_property; struct drm_property* tv_left_margin_property; struct drm_property* tv_select_subconnector_property; } ;
struct drm_encoder {struct drm_crtc* crtc; TYPE_1__* dev; } ;
struct drm_crtc {TYPE_2__* primary; int y; int x; int mode; } ;
struct drm_connector {scalar_t__ dpms; } ;
struct ch7006_state {int dummy; } ;
struct ch7006_priv {void* scale; struct drm_property* scale_property; void* flicker; void* contrast; void* brightness; void* norm; void* vmargin; void* hmargin; void* select_subconnector; struct ch7006_state state; } ;
struct TYPE_4__ {int fb; } ;
struct TYPE_3__ {struct drm_mode_config mode_config; } ;


 int CH7006_BLACK_LEVEL ;
 int CH7006_CONTRAST ;
 int CH7006_FFILTER ;
 int CH7006_HPOS ;
 int CH7006_POV ;
 int CH7006_POWER ;
 int CH7006_VPOS ;
 scalar_t__ DRM_MODE_DPMS_OFF ;
 int EINVAL ;
 int ch7006_dbg (struct i2c_client*,char*) ;
 int ch7006_load_reg (struct i2c_client*,struct ch7006_state*,int ) ;
 int ch7006_setup_levels (struct drm_encoder*) ;
 int ch7006_setup_power_state (struct drm_encoder*) ;
 int ch7006_setup_properties (struct drm_encoder*) ;
 int drm_crtc_helper_set_mode (struct drm_crtc*,int *,int ,int ,int ) ;
 int drm_helper_probe_single_connector_modes (struct drm_connector*,int ,int ) ;
 struct i2c_client* drm_i2c_encoder_get_client (struct drm_encoder*) ;
 struct ch7006_priv* to_ch7006_priv (struct drm_encoder*) ;

__attribute__((used)) static int ch7006_encoder_set_property(struct drm_encoder *encoder,
           struct drm_connector *connector,
           struct drm_property *property,
           uint64_t val)
{
 struct i2c_client *client = drm_i2c_encoder_get_client(encoder);
 struct ch7006_priv *priv = to_ch7006_priv(encoder);
 struct ch7006_state *state = &priv->state;
 struct drm_mode_config *conf = &encoder->dev->mode_config;
 struct drm_crtc *crtc = encoder->crtc;
 bool modes_changed = 0;

 ch7006_dbg(client, "\n");

 if (property == conf->tv_select_subconnector_property) {
  priv->select_subconnector = val;

  ch7006_setup_power_state(encoder);

  ch7006_load_reg(client, state, CH7006_POWER);

 } else if (property == conf->tv_left_margin_property) {
  priv->hmargin = val;

  ch7006_setup_properties(encoder);

  ch7006_load_reg(client, state, CH7006_POV);
  ch7006_load_reg(client, state, CH7006_HPOS);

 } else if (property == conf->tv_bottom_margin_property) {
  priv->vmargin = val;

  ch7006_setup_properties(encoder);

  ch7006_load_reg(client, state, CH7006_POV);
  ch7006_load_reg(client, state, CH7006_VPOS);

 } else if (property == conf->tv_mode_property) {
  if (connector->dpms != DRM_MODE_DPMS_OFF)
   return -EINVAL;

  priv->norm = val;

  modes_changed = 1;

 } else if (property == conf->tv_brightness_property) {
  priv->brightness = val;

  ch7006_setup_levels(encoder);

  ch7006_load_reg(client, state, CH7006_BLACK_LEVEL);

 } else if (property == conf->tv_contrast_property) {
  priv->contrast = val;

  ch7006_setup_properties(encoder);

  ch7006_load_reg(client, state, CH7006_CONTRAST);

 } else if (property == conf->tv_flicker_reduction_property) {
  priv->flicker = val;

  ch7006_setup_properties(encoder);

  ch7006_load_reg(client, state, CH7006_FFILTER);

 } else if (property == priv->scale_property) {
  if (connector->dpms != DRM_MODE_DPMS_OFF)
   return -EINVAL;

  priv->scale = val;

  modes_changed = 1;

 } else {
  return -EINVAL;
 }

 if (modes_changed) {
  drm_helper_probe_single_connector_modes(connector, 0, 0);

  if (crtc)
   drm_crtc_helper_set_mode(crtc, &crtc->mode,
       crtc->x, crtc->y,
       crtc->primary->fb);
 }

 return 0;
}
