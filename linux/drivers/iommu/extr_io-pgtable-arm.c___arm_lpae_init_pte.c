
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int quirks; } ;
struct TYPE_3__ {scalar_t__ fmt; TYPE_2__ cfg; } ;
struct arm_lpae_io_pgtable {TYPE_1__ iop; } ;
typedef int phys_addr_t ;
typedef int arm_lpae_iopte ;


 int ARM_LPAE_MAX_LEVELS ;
 int ARM_LPAE_PTE_AF ;
 int ARM_LPAE_PTE_NS ;
 int ARM_LPAE_PTE_SH_IS ;
 int ARM_LPAE_PTE_TYPE_BLOCK ;
 int ARM_LPAE_PTE_TYPE_PAGE ;
 scalar_t__ ARM_MALI_LPAE ;
 int IO_PGTABLE_QUIRK_ARM_NS ;
 int __arm_lpae_set_pte (int *,int ,TYPE_2__*) ;
 int paddr_to_iopte (int ,struct arm_lpae_io_pgtable*) ;

__attribute__((used)) static void __arm_lpae_init_pte(struct arm_lpae_io_pgtable *data,
    phys_addr_t paddr, arm_lpae_iopte prot,
    int lvl, arm_lpae_iopte *ptep)
{
 arm_lpae_iopte pte = prot;

 if (data->iop.cfg.quirks & IO_PGTABLE_QUIRK_ARM_NS)
  pte |= ARM_LPAE_PTE_NS;

 if (data->iop.fmt != ARM_MALI_LPAE && lvl == ARM_LPAE_MAX_LEVELS - 1)
  pte |= ARM_LPAE_PTE_TYPE_PAGE;
 else
  pte |= ARM_LPAE_PTE_TYPE_BLOCK;

 if (data->iop.fmt != ARM_MALI_LPAE)
  pte |= ARM_LPAE_PTE_AF;
 pte |= ARM_LPAE_PTE_SH_IS;
 pte |= paddr_to_iopte(paddr, data);

 __arm_lpae_set_pte(ptep, pte, &data->iop.cfg);
}
