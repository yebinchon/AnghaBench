
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_kms {int dummy; } ;
struct dpu_kms {int dummy; } ;


 int dpu_core_irq_preinstall (struct dpu_kms*) ;
 struct dpu_kms* to_dpu_kms (struct msm_kms*) ;

__attribute__((used)) static void dpu_irq_preinstall(struct msm_kms *kms)
{
 struct dpu_kms *dpu_kms = to_dpu_kms(kms);

 dpu_core_irq_preinstall(dpu_kms);
}
