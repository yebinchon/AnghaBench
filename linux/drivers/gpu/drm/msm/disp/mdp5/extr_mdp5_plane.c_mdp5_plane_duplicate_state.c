
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;
struct mdp5_plane_state {struct drm_plane_state base; } ;
struct drm_plane {int state; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_plane_duplicate_state (struct drm_plane*,struct drm_plane_state*) ;
 struct mdp5_plane_state* kmemdup (int ,int,int ) ;
 int to_mdp5_plane_state (int ) ;

__attribute__((used)) static struct drm_plane_state *
mdp5_plane_duplicate_state(struct drm_plane *plane)
{
 struct mdp5_plane_state *mdp5_state;

 if (WARN_ON(!plane->state))
  return ((void*)0);

 mdp5_state = kmemdup(to_mdp5_plane_state(plane->state),
   sizeof(*mdp5_state), GFP_KERNEL);
 if (!mdp5_state)
  return ((void*)0);

 __drm_atomic_helper_plane_duplicate_state(plane, &mdp5_state->base);

 return &mdp5_state->base;
}
