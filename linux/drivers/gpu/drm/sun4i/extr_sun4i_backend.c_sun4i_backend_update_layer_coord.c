
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int regs; } ;
struct sun4i_backend {TYPE_1__ engine; } ;
struct drm_plane_state {int crtc_y; int crtc_x; int crtc_h; int crtc_w; } ;
struct drm_plane {scalar_t__ type; struct drm_plane_state* state; } ;


 int DRM_DEBUG_DRIVER (char*,int,...) ;
 scalar_t__ DRM_PLANE_TYPE_PRIMARY ;
 int SUN4I_BACKEND_DISSIZE (int ,int ) ;
 int SUN4I_BACKEND_DISSIZE_REG ;
 int SUN4I_BACKEND_LAYCOOR (int ,int ) ;
 int SUN4I_BACKEND_LAYCOOR_REG (int) ;
 int SUN4I_BACKEND_LAYSIZE (int ,int ) ;
 int SUN4I_BACKEND_LAYSIZE_REG (int) ;
 int regmap_write (int ,int ,int ) ;

int sun4i_backend_update_layer_coord(struct sun4i_backend *backend,
         int layer, struct drm_plane *plane)
{
 struct drm_plane_state *state = plane->state;

 DRM_DEBUG_DRIVER("Updating layer %d\n", layer);

 if (plane->type == DRM_PLANE_TYPE_PRIMARY) {
  DRM_DEBUG_DRIVER("Primary layer, updating global size W: %u H: %u\n",
     state->crtc_w, state->crtc_h);
  regmap_write(backend->engine.regs, SUN4I_BACKEND_DISSIZE_REG,
        SUN4I_BACKEND_DISSIZE(state->crtc_w,
         state->crtc_h));
 }


 DRM_DEBUG_DRIVER("Layer size W: %u H: %u\n",
    state->crtc_w, state->crtc_h);
 regmap_write(backend->engine.regs, SUN4I_BACKEND_LAYSIZE_REG(layer),
       SUN4I_BACKEND_LAYSIZE(state->crtc_w,
        state->crtc_h));


 DRM_DEBUG_DRIVER("Layer coordinates X: %d Y: %d\n",
    state->crtc_x, state->crtc_y);
 regmap_write(backend->engine.regs, SUN4I_BACKEND_LAYCOOR_REG(layer),
       SUN4I_BACKEND_LAYCOOR(state->crtc_x,
        state->crtc_y));

 return 0;
}
