
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_plane {int dummy; } ;
struct drm_plane {int dummy; } ;


 int drm_plane_cleanup (struct drm_plane*) ;
 int kfree (struct mdp5_plane*) ;
 struct mdp5_plane* to_mdp5_plane (struct drm_plane*) ;

__attribute__((used)) static void mdp5_plane_destroy(struct drm_plane *plane)
{
 struct mdp5_plane *mdp5_plane = to_mdp5_plane(plane);

 drm_plane_cleanup(plane);

 kfree(mdp5_plane);
}
