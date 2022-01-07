
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_display_topology {int num_intf; int num_enc; int num_lm; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct dpu_rm_requirements {struct msm_display_topology topology; int hw_res; } ;
struct dpu_rm {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int ,int ,int ) ;
 int dpu_encoder_get_hw_resources (struct drm_encoder*,int *) ;

__attribute__((used)) static int _dpu_rm_populate_requirements(
  struct dpu_rm *rm,
  struct drm_encoder *enc,
  struct drm_crtc_state *crtc_state,
  struct dpu_rm_requirements *reqs,
  struct msm_display_topology req_topology)
{
 dpu_encoder_get_hw_resources(enc, &reqs->hw_res);

 reqs->topology = req_topology;

 DRM_DEBUG_KMS("num_lm: %d num_enc: %d num_intf: %d\n",
        reqs->topology.num_lm, reqs->topology.num_enc,
        reqs->topology.num_intf);

 return 0;
}
