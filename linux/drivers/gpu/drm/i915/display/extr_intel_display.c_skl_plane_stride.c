
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {unsigned int rotation; struct drm_framebuffer* fb; } ;
struct intel_plane_state {TYPE_2__* color_plane; TYPE_1__ base; } ;
struct drm_framebuffer {TYPE_3__* format; } ;
struct TYPE_6__ {int num_planes; } ;
struct TYPE_5__ {int stride; } ;


 int skl_plane_stride_mult (struct drm_framebuffer const*,int,unsigned int) ;

u32 skl_plane_stride(const struct intel_plane_state *plane_state,
       int color_plane)
{
 const struct drm_framebuffer *fb = plane_state->base.fb;
 unsigned int rotation = plane_state->base.rotation;
 u32 stride = plane_state->color_plane[color_plane].stride;

 if (color_plane >= fb->format->num_planes)
  return 0;

 return stride / skl_plane_stride_mult(fb, color_plane, rotation);
}
