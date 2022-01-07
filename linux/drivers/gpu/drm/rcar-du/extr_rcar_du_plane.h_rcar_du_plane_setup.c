
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_du_plane_state {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct rcar_du_plane {int group; TYPE_1__ plane; } ;


 void __rcar_du_plane_setup (int ,struct rcar_du_plane_state*) ;
 struct rcar_du_plane_state* to_rcar_plane_state (int ) ;

__attribute__((used)) static inline void rcar_du_plane_setup(struct rcar_du_plane *plane)
{
 struct rcar_du_plane_state *state =
  to_rcar_plane_state(plane->plane.state);

 return __rcar_du_plane_setup(plane->group, state);
}
