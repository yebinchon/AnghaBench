
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct gma_crtc {TYPE_4__ saved_mode; } ;
struct drm_property {int name; } ;
struct drm_encoder_helper_funcs {int (* dpms ) (struct drm_encoder*,int ) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; int dev; TYPE_2__* crtc; } ;
struct drm_connector {int base; struct drm_encoder* encoder; } ;
struct TYPE_6__ {TYPE_1__* primary; int y; int x; } ;
struct TYPE_5__ {int fb; } ;





 int drm_crtc_helper_set_mode (TYPE_2__*,TYPE_4__*,int ,int ,int ) ;
 scalar_t__ drm_object_property_get_value (int *,struct drm_property*,int *) ;
 scalar_t__ drm_object_property_set_value (int *,struct drm_property*,int ) ;
 int gma_backlight_set (int ,int ) ;
 int strcmp (int ,char*) ;
 int stub1 (struct drm_encoder*,int ) ;
 struct gma_crtc* to_gma_crtc (TYPE_2__*) ;

__attribute__((used)) static int cdv_intel_lvds_set_property(struct drm_connector *connector,
           struct drm_property *property,
           uint64_t value)
{
 struct drm_encoder *encoder = connector->encoder;

 if (!strcmp(property->name, "scaling mode") && encoder) {
  struct gma_crtc *crtc = to_gma_crtc(encoder->crtc);
  uint64_t curValue;

  if (!crtc)
   return -1;

  switch (value) {
  case 129:
   break;
  case 128:
   break;
  case 130:
   break;
  default:
   return -1;
  }

  if (drm_object_property_get_value(&connector->base,
           property,
           &curValue))
   return -1;

  if (curValue == value)
   return 0;

  if (drm_object_property_set_value(&connector->base,
       property,
       value))
   return -1;

  if (crtc->saved_mode.hdisplay != 0 &&
      crtc->saved_mode.vdisplay != 0) {
   if (!drm_crtc_helper_set_mode(encoder->crtc,
            &crtc->saved_mode,
            encoder->crtc->x,
            encoder->crtc->y,
            encoder->crtc->primary->fb))
    return -1;
  }
 } else if (!strcmp(property->name, "backlight") && encoder) {
  if (drm_object_property_set_value(&connector->base,
       property,
       value))
   return -1;
  else
                        gma_backlight_set(encoder->dev, value);
 } else if (!strcmp(property->name, "DPMS") && encoder) {
  const struct drm_encoder_helper_funcs *helpers =
     encoder->helper_private;
  helpers->dpms(encoder, value);
 }
 return 0;
}
