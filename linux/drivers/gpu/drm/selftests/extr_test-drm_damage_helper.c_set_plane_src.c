
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x1; int y1; int x2; int y2; } ;
struct drm_plane_state {TYPE_1__ src; } ;



__attribute__((used)) static void set_plane_src(struct drm_plane_state *state, int x1, int y1, int x2,
     int y2)
{
 state->src.x1 = x1;
 state->src.y1 = y1;
 state->src.x2 = x2;
 state->src.y2 = y2;
}
