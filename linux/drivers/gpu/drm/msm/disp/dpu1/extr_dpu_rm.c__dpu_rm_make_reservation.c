
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct drm_encoder {TYPE_1__ base; } ;
struct drm_crtc_state {int dummy; } ;
struct dpu_rm_requirements {int hw_res; int topology; } ;
struct dpu_rm {int dummy; } ;


 int DPU_ERROR (char*) ;
 int _dpu_rm_reserve_ctls (struct dpu_rm*,int ,int *) ;
 int _dpu_rm_reserve_intf_related_hw (struct dpu_rm*,int ,int *) ;
 int _dpu_rm_reserve_lms (struct dpu_rm*,int ,struct dpu_rm_requirements*) ;

__attribute__((used)) static int _dpu_rm_make_reservation(
  struct dpu_rm *rm,
  struct drm_encoder *enc,
  struct drm_crtc_state *crtc_state,
  struct dpu_rm_requirements *reqs)
{
 int ret;

 ret = _dpu_rm_reserve_lms(rm, enc->base.id, reqs);
 if (ret) {
  DPU_ERROR("unable to find appropriate mixers\n");
  return ret;
 }

 ret = _dpu_rm_reserve_ctls(rm, enc->base.id, &reqs->topology);
 if (ret) {
  DPU_ERROR("unable to find appropriate CTL\n");
  return ret;
 }

 ret = _dpu_rm_reserve_intf_related_hw(rm, enc->base.id, &reqs->hw_res);
 if (ret)
  return ret;

 return ret;
}
