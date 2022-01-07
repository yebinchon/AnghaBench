
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int dummy; } ;
struct dpu_plane {int pipe_hw; int lock; } ;


 int DPU_DEBUG_PLANE (struct dpu_plane*,char*) ;
 int DPU_PLANE_QOS_PANIC_CTRL ;
 int _dpu_plane_set_qos_ctrl (struct drm_plane*,int,int ) ;
 int dpu_hw_sspp_destroy (int ) ;
 int drm_plane_cleanup (struct drm_plane*) ;
 int kfree (struct dpu_plane*) ;
 int mutex_destroy (int *) ;
 struct dpu_plane* to_dpu_plane (struct drm_plane*) ;

__attribute__((used)) static void dpu_plane_destroy(struct drm_plane *plane)
{
 struct dpu_plane *pdpu = plane ? to_dpu_plane(plane) : ((void*)0);

 DPU_DEBUG_PLANE(pdpu, "\n");

 if (pdpu) {
  _dpu_plane_set_qos_ctrl(plane, 0, DPU_PLANE_QOS_PANIC_CTRL);

  mutex_destroy(&pdpu->lock);


  drm_plane_cleanup(plane);

  dpu_hw_sspp_destroy(pdpu->pipe_hw);

  kfree(pdpu);
 }
}
