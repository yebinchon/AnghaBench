
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int pgsize_bitmap; int ias; int oas; int coherent_walk; int iommu_dev; int * tlb; int quirks; } ;
struct TYPE_7__ {int force_aperture; int aperture_end; } ;
struct TYPE_8__ {TYPE_1__ geometry; } ;
struct ipmmu_vmsa_domain {int context_id; TYPE_3__* mmu; int iop; TYPE_6__ cfg; TYPE_2__ io_domain; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {TYPE_4__* root; } ;


 int ARM_32_LPAE_S1 ;
 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int IO_PGTABLE_QUIRK_ARM_NS ;
 int SZ_1G ;
 int SZ_2M ;
 int SZ_4K ;
 int alloc_io_pgtable_ops (int ,TYPE_6__*,struct ipmmu_vmsa_domain*) ;
 int ipmmu_domain_allocate_context (TYPE_4__*,struct ipmmu_vmsa_domain*) ;
 int ipmmu_domain_free_context (TYPE_4__*,int) ;
 int ipmmu_domain_setup_context (struct ipmmu_vmsa_domain*) ;
 int ipmmu_flush_ops ;

__attribute__((used)) static int ipmmu_domain_init_context(struct ipmmu_vmsa_domain *domain)
{
 int ret;
 domain->cfg.quirks = IO_PGTABLE_QUIRK_ARM_NS;
 domain->cfg.pgsize_bitmap = SZ_1G | SZ_2M | SZ_4K;
 domain->cfg.ias = 32;
 domain->cfg.oas = 40;
 domain->cfg.tlb = &ipmmu_flush_ops;
 domain->io_domain.geometry.aperture_end = DMA_BIT_MASK(32);
 domain->io_domain.geometry.force_aperture = 1;




 domain->cfg.coherent_walk = 0;
 domain->cfg.iommu_dev = domain->mmu->root->dev;




 ret = ipmmu_domain_allocate_context(domain->mmu->root, domain);
 if (ret < 0)
  return ret;

 domain->context_id = ret;

 domain->iop = alloc_io_pgtable_ops(ARM_32_LPAE_S1, &domain->cfg,
        domain);
 if (!domain->iop) {
  ipmmu_domain_free_context(domain->mmu->root,
       domain->context_id);
  return -EINVAL;
 }

 ipmmu_domain_setup_context(domain);
 return 0;
}
