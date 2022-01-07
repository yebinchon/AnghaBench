
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malidp_plane {int dummy; } ;
struct drm_plane {int dummy; } ;


 int drm_plane_cleanup (struct drm_plane*) ;
 int kfree (struct malidp_plane*) ;
 struct malidp_plane* to_malidp_plane (struct drm_plane*) ;

__attribute__((used)) static void malidp_de_plane_destroy(struct drm_plane *plane)
{
 struct malidp_plane *mp = to_malidp_plane(plane);

 drm_plane_cleanup(plane);
 kfree(mp);
}
