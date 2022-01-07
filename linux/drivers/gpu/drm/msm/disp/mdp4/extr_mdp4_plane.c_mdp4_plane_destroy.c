
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_plane {int dummy; } ;
struct drm_plane {int dummy; } ;


 int drm_plane_cleanup (struct drm_plane*) ;
 int kfree (struct mdp4_plane*) ;
 struct mdp4_plane* to_mdp4_plane (struct drm_plane*) ;

__attribute__((used)) static void mdp4_plane_destroy(struct drm_plane *plane)
{
 struct mdp4_plane *mdp4_plane = to_mdp4_plane(plane);

 drm_plane_cleanup(plane);

 kfree(mdp4_plane);
}
