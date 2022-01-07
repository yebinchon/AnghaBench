
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct TYPE_2__ {unsigned long long vtcr; int vttbr; } ;
struct io_pgtable_cfg {int quirks; int oas; unsigned long long ias; TYPE_1__ arm_lpae_s2_cfg; } ;
struct io_pgtable {int dummy; } ;
struct arm_lpae_io_pgtable {scalar_t__ levels; unsigned long pgd_size; unsigned long pg_shift; struct io_pgtable iop; int pgd; } ;
typedef int arm_lpae_iopte ;


 unsigned long long ARM_64_LPAE_S2_TCR_RES1 ;
 int ARM_LPAE_GRANULE (struct arm_lpae_io_pgtable*) ;
 scalar_t__ ARM_LPAE_MAX_LEVELS ;
 unsigned long ARM_LPAE_S2_MAX_CONCAT_PAGES ;
 unsigned long long ARM_LPAE_START_LVL (struct arm_lpae_io_pgtable*) ;
 unsigned long long ARM_LPAE_TCR_IRGN0_SHIFT ;
 unsigned long long ARM_LPAE_TCR_ORGN0_SHIFT ;
 unsigned long long ARM_LPAE_TCR_PS_32_BIT ;
 unsigned long long ARM_LPAE_TCR_PS_36_BIT ;
 unsigned long long ARM_LPAE_TCR_PS_40_BIT ;
 unsigned long long ARM_LPAE_TCR_PS_42_BIT ;
 unsigned long long ARM_LPAE_TCR_PS_44_BIT ;
 unsigned long long ARM_LPAE_TCR_PS_48_BIT ;
 unsigned long long ARM_LPAE_TCR_PS_52_BIT ;
 unsigned long long ARM_LPAE_TCR_PS_SHIFT ;
 unsigned long long ARM_LPAE_TCR_RGN_WBWA ;
 unsigned long long ARM_LPAE_TCR_SH0_SHIFT ;
 unsigned long long ARM_LPAE_TCR_SH_IS ;
 unsigned long long ARM_LPAE_TCR_SL0_MASK ;
 unsigned long long ARM_LPAE_TCR_SL0_SHIFT ;
 unsigned long long ARM_LPAE_TCR_T0SZ_SHIFT ;
 unsigned long long ARM_LPAE_TCR_TG0_16K ;
 unsigned long long ARM_LPAE_TCR_TG0_4K ;
 unsigned long long ARM_LPAE_TCR_TG0_64K ;
 int GFP_KERNEL ;
 int IO_PGTABLE_QUIRK_NON_STRICT ;



 int __arm_lpae_alloc_pages (unsigned long,int ,struct io_pgtable_cfg*) ;
 struct arm_lpae_io_pgtable* arm_lpae_alloc_pgtable (struct io_pgtable_cfg*) ;
 unsigned long ilog2 (int) ;
 int kfree (struct arm_lpae_io_pgtable*) ;
 int virt_to_phys (int ) ;
 int wmb () ;

__attribute__((used)) static struct io_pgtable *
arm_64_lpae_alloc_pgtable_s2(struct io_pgtable_cfg *cfg, void *cookie)
{
 u64 reg, sl;
 struct arm_lpae_io_pgtable *data;


 if (cfg->quirks & ~(IO_PGTABLE_QUIRK_NON_STRICT))
  return ((void*)0);

 data = arm_lpae_alloc_pgtable(cfg);
 if (!data)
  return ((void*)0);





 if (data->levels == ARM_LPAE_MAX_LEVELS) {
  unsigned long pgd_pages;

  pgd_pages = data->pgd_size >> ilog2(sizeof(arm_lpae_iopte));
  if (pgd_pages <= ARM_LPAE_S2_MAX_CONCAT_PAGES) {
   data->pgd_size = pgd_pages << data->pg_shift;
   data->levels--;
  }
 }


 reg = ARM_64_LPAE_S2_TCR_RES1 |
      (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
      (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_IRGN0_SHIFT) |
      (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_ORGN0_SHIFT);

 sl = ARM_LPAE_START_LVL(data);

 switch (ARM_LPAE_GRANULE(data)) {
 case 129:
  reg |= ARM_LPAE_TCR_TG0_4K;
  sl++;
  break;
 case 130:
  reg |= ARM_LPAE_TCR_TG0_16K;
  break;
 case 128:
  reg |= ARM_LPAE_TCR_TG0_64K;
  break;
 }

 switch (cfg->oas) {
 case 32:
  reg |= (ARM_LPAE_TCR_PS_32_BIT << ARM_LPAE_TCR_PS_SHIFT);
  break;
 case 36:
  reg |= (ARM_LPAE_TCR_PS_36_BIT << ARM_LPAE_TCR_PS_SHIFT);
  break;
 case 40:
  reg |= (ARM_LPAE_TCR_PS_40_BIT << ARM_LPAE_TCR_PS_SHIFT);
  break;
 case 42:
  reg |= (ARM_LPAE_TCR_PS_42_BIT << ARM_LPAE_TCR_PS_SHIFT);
  break;
 case 44:
  reg |= (ARM_LPAE_TCR_PS_44_BIT << ARM_LPAE_TCR_PS_SHIFT);
  break;
 case 48:
  reg |= (ARM_LPAE_TCR_PS_48_BIT << ARM_LPAE_TCR_PS_SHIFT);
  break;
 case 52:
  reg |= (ARM_LPAE_TCR_PS_52_BIT << ARM_LPAE_TCR_PS_SHIFT);
  break;
 default:
  goto out_free_data;
 }

 reg |= (64ULL - cfg->ias) << ARM_LPAE_TCR_T0SZ_SHIFT;
 reg |= (~sl & ARM_LPAE_TCR_SL0_MASK) << ARM_LPAE_TCR_SL0_SHIFT;
 cfg->arm_lpae_s2_cfg.vtcr = reg;


 data->pgd = __arm_lpae_alloc_pages(data->pgd_size, GFP_KERNEL, cfg);
 if (!data->pgd)
  goto out_free_data;


 wmb();


 cfg->arm_lpae_s2_cfg.vttbr = virt_to_phys(data->pgd);
 return &data->iop;

out_free_data:
 kfree(data);
 return ((void*)0);
}
