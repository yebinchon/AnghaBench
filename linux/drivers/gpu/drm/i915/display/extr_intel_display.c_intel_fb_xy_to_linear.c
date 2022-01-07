
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {struct drm_framebuffer* fb; } ;
struct intel_plane_state {TYPE_3__* color_plane; TYPE_1__ base; } ;
struct drm_framebuffer {TYPE_2__* format; } ;
struct TYPE_6__ {unsigned int stride; } ;
struct TYPE_5__ {unsigned int* cpp; } ;



u32 intel_fb_xy_to_linear(int x, int y,
     const struct intel_plane_state *state,
     int color_plane)
{
 const struct drm_framebuffer *fb = state->base.fb;
 unsigned int cpp = fb->format->cpp[color_plane];
 unsigned int pitch = state->color_plane[color_plane].stride;

 return y * pitch + x * cpp;
}
