
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_layer_state {unsigned int pipe; } ;
struct TYPE_2__ {int regs; } ;
struct sun4i_backend {TYPE_1__ engine; } ;
struct drm_plane_state {unsigned int normalized_zpos; } ;
struct drm_plane {struct drm_plane_state* state; } ;


 int DRM_DEBUG_DRIVER (char*,int,unsigned int,unsigned int) ;
 int SUN4I_BACKEND_ATTCTL_REG0 (int) ;
 int SUN4I_BACKEND_ATTCTL_REG0_LAY_PIPESEL (unsigned int) ;
 int SUN4I_BACKEND_ATTCTL_REG0_LAY_PIPESEL_MASK ;
 int SUN4I_BACKEND_ATTCTL_REG0_LAY_PRISEL (unsigned int) ;
 int SUN4I_BACKEND_ATTCTL_REG0_LAY_PRISEL_MASK ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct sun4i_layer_state* state_to_sun4i_layer_state (struct drm_plane_state*) ;

int sun4i_backend_update_layer_zpos(struct sun4i_backend *backend, int layer,
        struct drm_plane *plane)
{
 struct drm_plane_state *state = plane->state;
 struct sun4i_layer_state *p_state = state_to_sun4i_layer_state(state);
 unsigned int priority = state->normalized_zpos;
 unsigned int pipe = p_state->pipe;

 DRM_DEBUG_DRIVER("Setting layer %d's priority to %d and pipe %d\n",
    layer, priority, pipe);
 regmap_update_bits(backend->engine.regs, SUN4I_BACKEND_ATTCTL_REG0(layer),
      SUN4I_BACKEND_ATTCTL_REG0_LAY_PIPESEL_MASK |
      SUN4I_BACKEND_ATTCTL_REG0_LAY_PRISEL_MASK,
      SUN4I_BACKEND_ATTCTL_REG0_LAY_PIPESEL(p_state->pipe) |
      SUN4I_BACKEND_ATTCTL_REG0_LAY_PRISEL(priority));

 return 0;
}
