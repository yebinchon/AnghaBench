
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdp5_plane_state {TYPE_1__* r_hwpipe; } ;
struct drm_plane {int state; } ;
typedef enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;
struct TYPE_2__ {int pipe; } ;


 int SSPP_NONE ;
 struct mdp5_plane_state* to_mdp5_plane_state (int ) ;

enum mdp5_pipe mdp5_plane_right_pipe(struct drm_plane *plane)
{
 struct mdp5_plane_state *pstate = to_mdp5_plane_state(plane->state);

 if (!pstate->r_hwpipe)
  return SSPP_NONE;

 return pstate->r_hwpipe->pipe;
}
