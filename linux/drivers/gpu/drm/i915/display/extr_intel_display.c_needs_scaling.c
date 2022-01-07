
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dst; int src; } ;
struct intel_plane_state {TYPE_1__ base; } ;


 int drm_rect_height (int *) ;
 int drm_rect_width (int *) ;

__attribute__((used)) static bool needs_scaling(const struct intel_plane_state *state)
{
 int src_w = drm_rect_width(&state->base.src) >> 16;
 int src_h = drm_rect_height(&state->base.src) >> 16;
 int dst_w = drm_rect_width(&state->base.dst);
 int dst_h = drm_rect_height(&state->base.dst);

 return (src_w != dst_w || src_h != dst_h);
}
