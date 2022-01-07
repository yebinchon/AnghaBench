
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmob_drm_plane {int dummy; } ;
struct drm_plane {int * fb; } ;


 int __shmob_drm_plane_setup (struct shmob_drm_plane*,int *) ;
 struct shmob_drm_plane* to_shmob_plane (struct drm_plane*) ;

void shmob_drm_plane_setup(struct drm_plane *plane)
{
 struct shmob_drm_plane *splane = to_shmob_plane(plane);

 if (plane->fb == ((void*)0))
  return;

 __shmob_drm_plane_setup(splane, plane->fb);
}
