
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_plane {int * state; } ;
struct TYPE_4__ {int color_range; int color_encoding; } ;
struct TYPE_3__ {TYPE_2__ base; } ;
struct armada_overlay_state {int colorkey_yr; int colorkey_ug; int colorkey_vb; int colorkey_mode; TYPE_1__ base; int saturation; int contrast; int brightness; int colorkey_enable; } ;


 int ADV_GRACOLORKEY ;
 int CFG_ALPHA (int ) ;
 int CFG_ALPHAM_GRA ;
 int CFG_CKMODE (int ) ;
 int CKMODE_RGB ;
 int DEFAULT_BRIGHTNESS ;
 int DEFAULT_CONTRAST ;
 int DEFAULT_ENCODING ;
 int DEFAULT_SATURATION ;
 int DRM_COLOR_YCBCR_LIMITED_RANGE ;
 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_destroy_state (int *) ;
 int __drm_atomic_helper_plane_reset (struct drm_plane*,TYPE_2__*) ;
 int kfree (int *) ;
 struct armada_overlay_state* kzalloc (int,int ) ;

__attribute__((used)) static void armada_overlay_reset(struct drm_plane *plane)
{
 struct armada_overlay_state *state;

 if (plane->state)
  __drm_atomic_helper_plane_destroy_state(plane->state);
 kfree(plane->state);
 plane->state = ((void*)0);

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (state) {
  state->colorkey_yr = 0xfefefe00;
  state->colorkey_ug = 0x01010100;
  state->colorkey_vb = 0x01010100;
  state->colorkey_mode = CFG_CKMODE(CKMODE_RGB) |
           CFG_ALPHAM_GRA | CFG_ALPHA(0);
  state->colorkey_enable = ADV_GRACOLORKEY;
  state->brightness = DEFAULT_BRIGHTNESS;
  state->contrast = DEFAULT_CONTRAST;
  state->saturation = DEFAULT_SATURATION;
  __drm_atomic_helper_plane_reset(plane, &state->base.base);
  state->base.base.color_encoding = DEFAULT_ENCODING;
  state->base.base.color_range = DRM_COLOR_YCBCR_LIMITED_RANGE;
 }
}
