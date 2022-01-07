
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_kms {int dummy; } ;
struct dpu_kms {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_get_sync (int *) ;
 struct dpu_kms* to_dpu_kms (struct msm_kms*) ;

__attribute__((used)) static void dpu_kms_enable_commit(struct msm_kms *kms)
{
 struct dpu_kms *dpu_kms = to_dpu_kms(kms);
 pm_runtime_get_sync(&dpu_kms->pdev->dev);
}
