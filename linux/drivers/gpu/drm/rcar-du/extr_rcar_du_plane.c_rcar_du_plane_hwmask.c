
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_du_plane_state {int hwindex; TYPE_1__* format; } ;
struct TYPE_2__ {int planes; } ;



__attribute__((used)) static unsigned int rcar_du_plane_hwmask(struct rcar_du_plane_state *state)
{
 unsigned int mask;

 if (state->hwindex == -1)
  return 0;

 mask = 1 << state->hwindex;
 if (state->format->planes == 2)
  mask |= 1 << ((state->hwindex + 1) % 8);

 return mask;
}
