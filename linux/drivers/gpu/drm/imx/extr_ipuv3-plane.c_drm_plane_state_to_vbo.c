
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x1; int y1; } ;
struct drm_plane_state {TYPE_1__ src; struct drm_framebuffer* fb; } ;
struct drm_gem_cma_object {unsigned long paddr; } ;
struct drm_framebuffer {unsigned long* offsets; int* pitches; TYPE_2__* format; } ;
struct TYPE_4__ {int hsub; int vsub; int* cpp; } ;


 int BUG_ON (int) ;
 struct drm_gem_cma_object* drm_fb_cma_get_gem_obj (struct drm_framebuffer*,int) ;
 unsigned long drm_plane_state_to_eba (struct drm_plane_state*,int ) ;

__attribute__((used)) static inline unsigned long
drm_plane_state_to_vbo(struct drm_plane_state *state)
{
 struct drm_framebuffer *fb = state->fb;
 struct drm_gem_cma_object *cma_obj;
 unsigned long eba = drm_plane_state_to_eba(state, 0);
 int x = state->src.x1 >> 16;
 int y = state->src.y1 >> 16;

 cma_obj = drm_fb_cma_get_gem_obj(fb, 2);
 BUG_ON(!cma_obj);

 x /= fb->format->hsub;
 y /= fb->format->vsub;

 return cma_obj->paddr + fb->offsets[2] + fb->pitches[2] * y +
        fb->format->cpp[2] * x - eba;
}
