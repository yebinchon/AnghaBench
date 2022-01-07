
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int state; } ;
struct dpu_plane {int dummy; } ;


 int DPU_DEBUG_PLANE (struct dpu_plane*,char*) ;
 int DPU_ERROR (char*) ;
 int dpu_plane_atomic_update (struct drm_plane*,int ) ;
 struct dpu_plane* to_dpu_plane (struct drm_plane*) ;

void dpu_plane_restore(struct drm_plane *plane)
{
 struct dpu_plane *pdpu;

 if (!plane || !plane->state) {
  DPU_ERROR("invalid plane\n");
  return;
 }

 pdpu = to_dpu_plane(plane);

 DPU_DEBUG_PLANE(pdpu, "\n");


 dpu_plane_atomic_update(plane, plane->state);
}
