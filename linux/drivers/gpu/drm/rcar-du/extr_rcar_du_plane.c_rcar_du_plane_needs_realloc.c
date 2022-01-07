
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_du_plane_state {scalar_t__ source; TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ planes; } ;



__attribute__((used)) static bool rcar_du_plane_needs_realloc(
    const struct rcar_du_plane_state *old_state,
    const struct rcar_du_plane_state *new_state)
{





 if (!old_state->format ||
     old_state->format->planes != new_state->format->planes)
  return 1;


 if (old_state->source != new_state->source)
  return 1;

 return 0;
}
