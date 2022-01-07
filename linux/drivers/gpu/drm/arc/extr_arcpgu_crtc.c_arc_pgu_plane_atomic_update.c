
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_1__* state; } ;
struct drm_gem_cma_object {int paddr; } ;
struct arcpgu_drm_private {int dummy; } ;
struct TYPE_2__ {int fb; int crtc; } ;


 int ARCPGU_REG_BUF0_ADDR ;
 int arc_pgu_write (struct arcpgu_drm_private*,int ,int ) ;
 struct arcpgu_drm_private* crtc_to_arcpgu_priv (int ) ;
 struct drm_gem_cma_object* drm_fb_cma_get_gem_obj (int ,int ) ;

__attribute__((used)) static void arc_pgu_plane_atomic_update(struct drm_plane *plane,
     struct drm_plane_state *state)
{
 struct arcpgu_drm_private *arcpgu;
 struct drm_gem_cma_object *gem;

 if (!plane->state->crtc || !plane->state->fb)
  return;

 arcpgu = crtc_to_arcpgu_priv(plane->state->crtc);
 gem = drm_fb_cma_get_gem_obj(plane->state->fb, 0);
 arc_pgu_write(arcpgu, ARCPGU_REG_BUF0_ADDR, gem->paddr);
}
