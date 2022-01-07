
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
struct nv17_tv_norm_params {scalar_t__ kind; } ;
struct nv17_tv_encoder {void* select_subconnector; void* tv_norm; void* flicker; void* hue; void* saturation; void* overscan; } ;
struct drm_property {int dummy; } ;
struct drm_mode_config {struct drm_property* tv_select_subconnector_property; struct drm_property* tv_mode_property; struct drm_property* tv_flicker_reduction_property; struct drm_property* tv_hue_property; struct drm_property* tv_saturation_property; struct drm_property* tv_overscan_property; } ;
struct drm_encoder {struct drm_crtc* crtc; TYPE_1__* dev; } ;
struct drm_crtc {TYPE_2__* primary; int y; int x; int mode; } ;
struct drm_connector {scalar_t__ dpms; } ;
struct TYPE_4__ {int fb; } ;
struct TYPE_3__ {struct drm_mode_config mode_config; } ;


 scalar_t__ CTV_ENC_MODE ;
 scalar_t__ DRM_MODE_DPMS_OFF ;
 int EINVAL ;
 scalar_t__ TV_ENC_MODE ;
 int drm_crtc_helper_set_mode (struct drm_crtc*,int *,int ,int ,int ) ;
 int drm_helper_probe_single_connector_modes (struct drm_connector*,int ,int ) ;
 struct nv17_tv_norm_params* get_tv_norm (struct drm_encoder*) ;
 int nv17_ctv_update_rescaler (struct drm_encoder*) ;
 int nv17_tv_update_properties (struct drm_encoder*) ;
 int nv17_tv_update_rescaler (struct drm_encoder*) ;
 struct nv17_tv_encoder* to_tv_enc (struct drm_encoder*) ;

__attribute__((used)) static int nv17_tv_set_property(struct drm_encoder *encoder,
    struct drm_connector *connector,
    struct drm_property *property,
    uint64_t val)
{
 struct drm_mode_config *conf = &encoder->dev->mode_config;
 struct drm_crtc *crtc = encoder->crtc;
 struct nv17_tv_encoder *tv_enc = to_tv_enc(encoder);
 struct nv17_tv_norm_params *tv_norm = get_tv_norm(encoder);
 bool modes_changed = 0;

 if (property == conf->tv_overscan_property) {
  tv_enc->overscan = val;
  if (encoder->crtc) {
   if (tv_norm->kind == CTV_ENC_MODE)
    nv17_ctv_update_rescaler(encoder);
   else
    nv17_tv_update_rescaler(encoder);
  }

 } else if (property == conf->tv_saturation_property) {
  if (tv_norm->kind != TV_ENC_MODE)
   return -EINVAL;

  tv_enc->saturation = val;
  nv17_tv_update_properties(encoder);

 } else if (property == conf->tv_hue_property) {
  if (tv_norm->kind != TV_ENC_MODE)
   return -EINVAL;

  tv_enc->hue = val;
  nv17_tv_update_properties(encoder);

 } else if (property == conf->tv_flicker_reduction_property) {
  if (tv_norm->kind != TV_ENC_MODE)
   return -EINVAL;

  tv_enc->flicker = val;
  if (encoder->crtc)
   nv17_tv_update_rescaler(encoder);

 } else if (property == conf->tv_mode_property) {
  if (connector->dpms != DRM_MODE_DPMS_OFF)
   return -EINVAL;

  tv_enc->tv_norm = val;

  modes_changed = 1;

 } else if (property == conf->tv_select_subconnector_property) {
  if (tv_norm->kind != TV_ENC_MODE)
   return -EINVAL;

  tv_enc->select_subconnector = val;
  nv17_tv_update_properties(encoder);

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
