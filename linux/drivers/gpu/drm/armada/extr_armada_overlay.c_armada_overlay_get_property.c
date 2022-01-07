
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct drm_property {int dummy; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_1__* dev; } ;
struct armada_private {struct drm_property* saturation_prop; struct drm_property* contrast_prop; struct drm_property* brightness_prop; struct drm_property* colorkey_mode_prop; struct drm_property* colorkey_alpha_prop; struct drm_property* colorkey_val_prop; struct drm_property* colorkey_max_prop; struct drm_property* colorkey_min_prop; struct drm_property* colorkey_prop; } ;
struct TYPE_4__ {int colorkey_mode; int brightness; int contrast; int saturation; int colorkey_vb; int colorkey_ug; int colorkey_yr; } ;
struct TYPE_3__ {struct armada_private* dev_private; } ;


 int CFG_CKMODE_MASK ;
 int EINVAL ;
 int R2BGR (int ,int ,int ,int) ;
 TYPE_2__* drm_to_overlay_state (struct drm_plane_state const*) ;
 int ffs (int) ;

__attribute__((used)) static int armada_overlay_get_property(struct drm_plane *plane,
 const struct drm_plane_state *state, struct drm_property *property,
 uint64_t *val)
{
 struct armada_private *priv = plane->dev->dev_private;



 if (property == priv->colorkey_prop) {

  *val = ((((drm_to_overlay_state(state)->colorkey_yr) >> (16)) & 0xff) << 0 | (((drm_to_overlay_state(state)->colorkey_ug) >> (16)) & 0xff) << 8 | (((drm_to_overlay_state(state)->colorkey_vb) >> (16)) & 0xff) << 16);



  if (*val != ((((drm_to_overlay_state(state)->colorkey_yr) >> (24)) & 0xff) << 0 | (((drm_to_overlay_state(state)->colorkey_ug) >> (24)) & 0xff) << 8 | (((drm_to_overlay_state(state)->colorkey_vb) >> (24)) & 0xff) << 16) ||


      *val != ((((drm_to_overlay_state(state)->colorkey_yr) >> (8)) & 0xff) << 0 | (((drm_to_overlay_state(state)->colorkey_ug) >> (8)) & 0xff) << 8 | (((drm_to_overlay_state(state)->colorkey_vb) >> (8)) & 0xff) << 16))


   return -EINVAL;
 } else if (property == priv->colorkey_min_prop) {
  *val = ((((drm_to_overlay_state(state)->colorkey_yr) >> (16)) & 0xff) << 0 | (((drm_to_overlay_state(state)->colorkey_ug) >> (16)) & 0xff) << 8 | (((drm_to_overlay_state(state)->colorkey_vb) >> (16)) & 0xff) << 16);


 } else if (property == priv->colorkey_max_prop) {
  *val = ((((drm_to_overlay_state(state)->colorkey_yr) >> (24)) & 0xff) << 0 | (((drm_to_overlay_state(state)->colorkey_ug) >> (24)) & 0xff) << 8 | (((drm_to_overlay_state(state)->colorkey_vb) >> (24)) & 0xff) << 16);


 } else if (property == priv->colorkey_val_prop) {
  *val = ((((drm_to_overlay_state(state)->colorkey_yr) >> (8)) & 0xff) << 0 | (((drm_to_overlay_state(state)->colorkey_ug) >> (8)) & 0xff) << 8 | (((drm_to_overlay_state(state)->colorkey_vb) >> (8)) & 0xff) << 16);


 } else if (property == priv->colorkey_alpha_prop) {
  *val = ((((drm_to_overlay_state(state)->colorkey_yr) >> (0)) & 0xff) << 0 | (((drm_to_overlay_state(state)->colorkey_ug) >> (0)) & 0xff) << 8 | (((drm_to_overlay_state(state)->colorkey_vb) >> (0)) & 0xff) << 16);


 } else if (property == priv->colorkey_mode_prop) {
  *val = (drm_to_overlay_state(state)->colorkey_mode &
   CFG_CKMODE_MASK) >> ffs(CFG_CKMODE_MASK);
 } else if (property == priv->brightness_prop) {
  *val = drm_to_overlay_state(state)->brightness + 256;
 } else if (property == priv->contrast_prop) {
  *val = drm_to_overlay_state(state)->contrast;
 } else if (property == priv->saturation_prop) {
  *val = drm_to_overlay_state(state)->saturation;
 } else {
  return -EINVAL;
 }
 return 0;
}
