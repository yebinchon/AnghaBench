
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct msm_gem_address_space {TYPE_5__* mmu; } ;
struct TYPE_6__ {int aperture_start; int aperture_end; } ;
struct iommu_domain {TYPE_1__ geometry; } ;
struct TYPE_9__ {struct msm_gem_address_space* aspace; } ;
struct dpu_kms {TYPE_4__ base; TYPE_2__* dev; } ;
struct TYPE_10__ {TYPE_3__* funcs; } ;
struct TYPE_8__ {int (* attach ) (TYPE_5__*,int ,int ) ;} ;
struct TYPE_7__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int DPU_ERROR (char*,int) ;
 scalar_t__ IS_ERR (struct msm_gem_address_space*) ;
 int PTR_ERR (struct msm_gem_address_space*) ;
 struct iommu_domain* iommu_domain_alloc (int *) ;
 int iommu_domain_free (struct iommu_domain*) ;
 int iommu_ports ;
 struct msm_gem_address_space* msm_gem_address_space_create (int ,struct iommu_domain*,char*) ;
 int msm_gem_address_space_put (struct msm_gem_address_space*) ;
 int platform_bus_type ;
 int stub1 (TYPE_5__*,int ,int ) ;

__attribute__((used)) static int _dpu_kms_mmu_init(struct dpu_kms *dpu_kms)
{
 struct iommu_domain *domain;
 struct msm_gem_address_space *aspace;
 int ret;

 domain = iommu_domain_alloc(&platform_bus_type);
 if (!domain)
  return 0;

 domain->geometry.aperture_start = 0x1000;
 domain->geometry.aperture_end = 0xffffffff;

 aspace = msm_gem_address_space_create(dpu_kms->dev->dev,
   domain, "dpu1");
 if (IS_ERR(aspace)) {
  iommu_domain_free(domain);
  return PTR_ERR(aspace);
 }

 ret = aspace->mmu->funcs->attach(aspace->mmu, iommu_ports,
   ARRAY_SIZE(iommu_ports));
 if (ret) {
  DPU_ERROR("failed to attach iommu %d\n", ret);
  msm_gem_address_space_put(aspace);
  return ret;
 }

 dpu_kms->base.aspace = aspace;
 return 0;
}
