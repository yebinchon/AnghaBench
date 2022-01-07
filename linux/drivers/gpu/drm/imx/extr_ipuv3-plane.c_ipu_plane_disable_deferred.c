
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_plane {int disabling; } ;
struct drm_plane {int dummy; } ;


 int ipu_plane_disable (struct ipu_plane*,int) ;
 struct ipu_plane* to_ipu_plane (struct drm_plane*) ;

void ipu_plane_disable_deferred(struct drm_plane *plane)
{
 struct ipu_plane *ipu_plane = to_ipu_plane(plane);

 if (ipu_plane->disabling) {
  ipu_plane->disabling = 0;
  ipu_plane_disable(ipu_plane, 0);
 }
}
