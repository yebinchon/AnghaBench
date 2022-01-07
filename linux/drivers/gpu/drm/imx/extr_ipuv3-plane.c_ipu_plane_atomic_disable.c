
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_plane {int disabling; scalar_t__ dp; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;


 int ipu_dp_disable_channel (scalar_t__,int) ;
 struct ipu_plane* to_ipu_plane (struct drm_plane*) ;

__attribute__((used)) static void ipu_plane_atomic_disable(struct drm_plane *plane,
         struct drm_plane_state *old_state)
{
 struct ipu_plane *ipu_plane = to_ipu_plane(plane);

 if (ipu_plane->dp)
  ipu_dp_disable_channel(ipu_plane->dp, 1);
 ipu_plane->disabling = 1;
}
