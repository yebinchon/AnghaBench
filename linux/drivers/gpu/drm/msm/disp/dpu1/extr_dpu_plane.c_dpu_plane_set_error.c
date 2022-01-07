
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int dummy; } ;
struct dpu_plane {int is_error; } ;


 struct dpu_plane* to_dpu_plane (struct drm_plane*) ;

void dpu_plane_set_error(struct drm_plane *plane, bool error)
{
 struct dpu_plane *pdpu;

 if (!plane)
  return;

 pdpu = to_dpu_plane(plane);
 pdpu->is_error = error;
}
