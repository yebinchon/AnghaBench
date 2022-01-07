
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct mdp5_plane_state {TYPE_2__* r_hwpipe; TYPE_1__* hwpipe; } ;
struct drm_plane {int state; } ;
struct TYPE_4__ {int flush_mask; } ;
struct TYPE_3__ {int flush_mask; } ;


 scalar_t__ WARN_ON (int) ;
 struct mdp5_plane_state* to_mdp5_plane_state (int ) ;

uint32_t mdp5_plane_get_flush(struct drm_plane *plane)
{
 struct mdp5_plane_state *pstate = to_mdp5_plane_state(plane->state);
 u32 mask;

 if (WARN_ON(!pstate->hwpipe))
  return 0;

 mask = pstate->hwpipe->flush_mask;

 if (pstate->r_hwpipe)
  mask |= pstate->r_hwpipe->flush_mask;

 return mask;
}
