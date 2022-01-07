
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct vc4_plane_state {size_t ptr0_offset; scalar_t__* dlist; int * hw_dlist; } ;
struct drm_plane {TYPE_1__* state; } ;
struct drm_gem_cma_object {scalar_t__ paddr; } ;
struct drm_framebuffer {scalar_t__* offsets; } ;
struct TYPE_2__ {scalar_t__ crtc_x; scalar_t__ crtc_y; } ;


 int WARN_ON_ONCE (int) ;
 struct drm_gem_cma_object* drm_fb_cma_get_gem_obj (struct drm_framebuffer*,int ) ;
 struct vc4_plane_state* to_vc4_plane_state (TYPE_1__*) ;
 int writel (scalar_t__,int *) ;

void vc4_plane_async_set_fb(struct drm_plane *plane, struct drm_framebuffer *fb)
{
 struct vc4_plane_state *vc4_state = to_vc4_plane_state(plane->state);
 struct drm_gem_cma_object *bo = drm_fb_cma_get_gem_obj(fb, 0);
 uint32_t addr;




 WARN_ON_ONCE(plane->state->crtc_x < 0 || plane->state->crtc_y < 0);
 addr = bo->paddr + fb->offsets[0];





 writel(addr, &vc4_state->hw_dlist[vc4_state->ptr0_offset]);





 vc4_state->dlist[vc4_state->ptr0_offset] = addr;
}
