
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_plane {int pipe; } ;
struct drm_plane {int dummy; } ;
typedef enum mdp4_pipe { ____Placeholder_mdp4_pipe } mdp4_pipe ;


 struct mdp4_plane* to_mdp4_plane (struct drm_plane*) ;

enum mdp4_pipe mdp4_plane_pipe(struct drm_plane *plane)
{
 struct mdp4_plane *mdp4_plane = to_mdp4_plane(plane);
 return mdp4_plane->pipe;
}
