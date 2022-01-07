
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int memattr; int transtab; } ;
struct io_pgtable_cfg {int ias; int oas; int pgsize_bitmap; TYPE_1__ arm_mali_lpae_cfg; scalar_t__ quirks; } ;
struct io_pgtable {int dummy; } ;
struct arm_lpae_io_pgtable {scalar_t__ levels; int pgd_size; struct io_pgtable iop; int pgd; } ;
typedef int arm_lpae_iopte ;


 int ARM_LPAE_MAIR_ATTR_IDX_CACHE ;
 int ARM_LPAE_MAIR_ATTR_IDX_DEV ;
 int ARM_LPAE_MAIR_ATTR_IDX_NC ;
 int ARM_LPAE_MAIR_ATTR_SHIFT (int ) ;
 scalar_t__ ARM_LPAE_MAX_LEVELS ;
 int ARM_MALI_LPAE_MEMATTR_IMP_DEF ;
 int ARM_MALI_LPAE_MEMATTR_WRITE_ALLOC ;
 int ARM_MALI_LPAE_TTBR_ADRMODE_TABLE ;
 int ARM_MALI_LPAE_TTBR_READ_INNER ;
 int GFP_KERNEL ;
 int SZ_1G ;
 int SZ_2M ;
 int SZ_4K ;
 int __arm_lpae_alloc_pages (int,int ,struct io_pgtable_cfg*) ;
 struct arm_lpae_io_pgtable* arm_lpae_alloc_pgtable (struct io_pgtable_cfg*) ;
 int kfree (struct arm_lpae_io_pgtable*) ;
 int virt_to_phys (int ) ;
 int wmb () ;

__attribute__((used)) static struct io_pgtable *
arm_mali_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
{
 struct arm_lpae_io_pgtable *data;


 if (cfg->quirks)
  return ((void*)0);

 if (cfg->ias > 48 || cfg->oas > 40)
  return ((void*)0);

 cfg->pgsize_bitmap &= (SZ_4K | SZ_2M | SZ_1G);

 data = arm_lpae_alloc_pgtable(cfg);
 if (!data)
  return ((void*)0);


 if (data->levels < ARM_LPAE_MAX_LEVELS) {
  data->levels = ARM_LPAE_MAX_LEVELS;
  data->pgd_size = sizeof(arm_lpae_iopte);
 }







 cfg->arm_mali_lpae_cfg.memattr =
  (ARM_MALI_LPAE_MEMATTR_IMP_DEF
   << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_NC)) |
  (ARM_MALI_LPAE_MEMATTR_WRITE_ALLOC
   << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_CACHE)) |
  (ARM_MALI_LPAE_MEMATTR_IMP_DEF
   << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_DEV));

 data->pgd = __arm_lpae_alloc_pages(data->pgd_size, GFP_KERNEL, cfg);
 if (!data->pgd)
  goto out_free_data;


 wmb();

 cfg->arm_mali_lpae_cfg.transtab = virt_to_phys(data->pgd) |
       ARM_MALI_LPAE_TTBR_READ_INNER |
       ARM_MALI_LPAE_TTBR_ADRMODE_TABLE;
 return &data->iop;

out_free_data:
 kfree(data);
 return ((void*)0);
}
