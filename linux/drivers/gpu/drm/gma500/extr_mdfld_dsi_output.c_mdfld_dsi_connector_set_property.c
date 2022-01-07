
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int const uint64_t ;
struct TYPE_8__ {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct gma_crtc {int saved_adjusted_mode; TYPE_3__ saved_mode; } ;
struct drm_property {int name; } ;
struct drm_encoder_helper_funcs {int (* mode_set ) (struct drm_encoder*,TYPE_3__*,int *) ;} ;
struct drm_encoder {int dev; struct drm_encoder_helper_funcs* helper_private; TYPE_2__* crtc; } ;
struct drm_connector {int base; struct drm_encoder* encoder; } ;
struct TYPE_7__ {TYPE_1__* primary; int y; int x; } ;
struct TYPE_6__ {int fb; } ;





 int drm_crtc_helper_set_mode (TYPE_2__*,TYPE_3__*,int ,int ,int ) ;
 scalar_t__ drm_object_property_get_value (int *,struct drm_property*,int const*) ;
 scalar_t__ drm_object_property_set_value (int *,struct drm_property*,int const) ;
 int gma_backlight_set (int ,int const) ;
 int strcmp (int ,char*) ;
 int stub1 (struct drm_encoder*,TYPE_3__*,int *) ;
 struct gma_crtc* to_gma_crtc (TYPE_2__*) ;

__attribute__((used)) static int mdfld_dsi_connector_set_property(struct drm_connector *connector,
    struct drm_property *property,
    uint64_t value)
{
 struct drm_encoder *encoder = connector->encoder;

 if (!strcmp(property->name, "scaling mode") && encoder) {
  struct gma_crtc *gma_crtc = to_gma_crtc(encoder->crtc);
  bool centerechange;
  uint64_t val;

  if (!gma_crtc)
   goto set_prop_error;

  switch (value) {
  case 129:
   break;
  case 128:
   break;
  case 130:
   break;
  default:
   goto set_prop_error;
  }

  if (drm_object_property_get_value(&connector->base, property, &val))
   goto set_prop_error;

  if (val == value)
   goto set_prop_done;

  if (drm_object_property_set_value(&connector->base,
       property, value))
   goto set_prop_error;

  centerechange = (val == 128) ||
   (value == 128);

  if (gma_crtc->saved_mode.hdisplay != 0 &&
      gma_crtc->saved_mode.vdisplay != 0) {
   if (centerechange) {
    if (!drm_crtc_helper_set_mode(encoder->crtc,
      &gma_crtc->saved_mode,
      encoder->crtc->x,
      encoder->crtc->y,
      encoder->crtc->primary->fb))
     goto set_prop_error;
   } else {
    const struct drm_encoder_helper_funcs *funcs =
      encoder->helper_private;
    funcs->mode_set(encoder,
     &gma_crtc->saved_mode,
     &gma_crtc->saved_adjusted_mode);
   }
  }
 } else if (!strcmp(property->name, "backlight") && encoder) {
  if (drm_object_property_set_value(&connector->base, property,
         value))
   goto set_prop_error;
  else
   gma_backlight_set(encoder->dev, value);
 }
set_prop_done:
 return 0;
set_prop_error:
 return -1;
}
