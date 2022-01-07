
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_plane_state {TYPE_1__* color_plane; } ;
struct TYPE_2__ {scalar_t__ y; scalar_t__ x; } ;



void intel_add_fb_offsets(int *x, int *y,
     const struct intel_plane_state *state,
     int color_plane)

{
 *x += state->color_plane[color_plane].x;
 *y += state->color_plane[color_plane].y;
}
