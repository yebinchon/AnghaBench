
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_kms {int dummy; } ;
struct dpu_kms {int dummy; } ;
typedef int irqreturn_t ;


 int dpu_core_irq (struct dpu_kms*) ;
 struct dpu_kms* to_dpu_kms (struct msm_kms*) ;

__attribute__((used)) static irqreturn_t dpu_irq(struct msm_kms *kms)
{
 struct dpu_kms *dpu_kms = to_dpu_kms(kms);

 return dpu_core_irq(dpu_kms);
}
