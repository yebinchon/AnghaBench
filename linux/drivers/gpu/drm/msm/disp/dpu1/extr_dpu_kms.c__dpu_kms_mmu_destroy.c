
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msm_mmu {TYPE_1__* funcs; } ;
struct TYPE_5__ {TYPE_3__* aspace; } ;
struct dpu_kms {TYPE_2__ base; } ;
struct TYPE_6__ {struct msm_mmu* mmu; } ;
struct TYPE_4__ {int (* detach ) (struct msm_mmu*,char const**,int ) ;} ;


 int ARRAY_SIZE (scalar_t__) ;
 scalar_t__ iommu_ports ;
 int msm_gem_address_space_put (TYPE_3__*) ;
 int stub1 (struct msm_mmu*,char const**,int ) ;

__attribute__((used)) static void _dpu_kms_mmu_destroy(struct dpu_kms *dpu_kms)
{
 struct msm_mmu *mmu;

 if (!dpu_kms->base.aspace)
  return;

 mmu = dpu_kms->base.aspace->mmu;

 mmu->funcs->detach(mmu, (const char **)iommu_ports,
   ARRAY_SIZE(iommu_ports));
 msm_gem_address_space_put(dpu_kms->base.aspace);

 dpu_kms->base.aspace = ((void*)0);
}
