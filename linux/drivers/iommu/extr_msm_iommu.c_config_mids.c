
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_iommu_dev {int base; } ;
struct msm_iommu_ctx_dev {int num_mids; int* mids; int num; } ;


 int SET_CBACR_N (int ,int,int ) ;
 int SET_CBNDX (int ,int,int) ;
 int SET_CBVMID (int ,int,int ) ;
 int SET_CONTEXTIDR_ASID (int ,int,int) ;
 int SET_M2VCBR_N (int ,int,int ) ;
 int SET_NSCFG (int ,int,int) ;
 int SET_VMID (int ,int,int ) ;

__attribute__((used)) static void config_mids(struct msm_iommu_dev *iommu,
   struct msm_iommu_ctx_dev *master)
{
 int mid, ctx, i;

 for (i = 0; i < master->num_mids; i++) {
  mid = master->mids[i];
  ctx = master->num;

  SET_M2VCBR_N(iommu->base, mid, 0);
  SET_CBACR_N(iommu->base, ctx, 0);


  SET_VMID(iommu->base, mid, 0);


  SET_CBNDX(iommu->base, mid, ctx);


  SET_CBVMID(iommu->base, ctx, 0);


  SET_CONTEXTIDR_ASID(iommu->base, ctx, ctx);


  SET_NSCFG(iommu->base, mid, 3);
 }
}
