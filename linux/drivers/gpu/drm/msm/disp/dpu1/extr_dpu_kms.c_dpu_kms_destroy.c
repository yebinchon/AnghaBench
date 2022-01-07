
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_kms {int dummy; } ;
struct dpu_kms {int dummy; } ;


 int DPU_ERROR (char*) ;
 int _dpu_kms_hw_destroy (struct dpu_kms*) ;
 struct dpu_kms* to_dpu_kms (struct msm_kms*) ;

__attribute__((used)) static void dpu_kms_destroy(struct msm_kms *kms)
{
 struct dpu_kms *dpu_kms;

 if (!kms) {
  DPU_ERROR("invalid kms\n");
  return;
 }

 dpu_kms = to_dpu_kms(kms);

 _dpu_kms_hw_destroy(dpu_kms);
}
