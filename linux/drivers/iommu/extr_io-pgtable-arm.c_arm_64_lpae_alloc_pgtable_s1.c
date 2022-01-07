
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct TYPE_2__ {unsigned long long tcr; unsigned long long* mair; int * ttbr; } ;
struct io_pgtable_cfg {int quirks; int oas; unsigned long long ias; TYPE_1__ arm_lpae_s1_cfg; scalar_t__ coherent_walk; } ;
struct io_pgtable {int dummy; } ;
struct arm_lpae_io_pgtable {struct io_pgtable iop; int pgd; int pgd_size; } ;


 int ARM_LPAE_GRANULE (struct arm_lpae_io_pgtable*) ;
 unsigned long long ARM_LPAE_MAIR_ATTR_DEVICE ;
 int ARM_LPAE_MAIR_ATTR_IDX_CACHE ;
 int ARM_LPAE_MAIR_ATTR_IDX_DEV ;
 int ARM_LPAE_MAIR_ATTR_IDX_INC_OCACHE ;
 int ARM_LPAE_MAIR_ATTR_IDX_NC ;
 unsigned long long ARM_LPAE_MAIR_ATTR_INC_OWBRWA ;
 unsigned long long ARM_LPAE_MAIR_ATTR_NC ;
 unsigned long long ARM_LPAE_MAIR_ATTR_SHIFT (int ) ;
 unsigned long long ARM_LPAE_MAIR_ATTR_WBRWA ;
 unsigned long long ARM_LPAE_TCR_EPD1 ;
 unsigned long long ARM_LPAE_TCR_IPS_SHIFT ;
 unsigned long long ARM_LPAE_TCR_IRGN0_SHIFT ;
 unsigned long long ARM_LPAE_TCR_ORGN0_SHIFT ;
 unsigned long long ARM_LPAE_TCR_PS_32_BIT ;
 unsigned long long ARM_LPAE_TCR_PS_36_BIT ;
 unsigned long long ARM_LPAE_TCR_PS_40_BIT ;
 unsigned long long ARM_LPAE_TCR_PS_42_BIT ;
 unsigned long long ARM_LPAE_TCR_PS_44_BIT ;
 unsigned long long ARM_LPAE_TCR_PS_48_BIT ;
 unsigned long long ARM_LPAE_TCR_PS_52_BIT ;
 unsigned long long ARM_LPAE_TCR_RGN_NC ;
 unsigned long long ARM_LPAE_TCR_RGN_WBWA ;
 unsigned long long ARM_LPAE_TCR_SH0_SHIFT ;
 unsigned long long ARM_LPAE_TCR_SH_IS ;
 unsigned long long ARM_LPAE_TCR_SH_OS ;
 unsigned long long ARM_LPAE_TCR_T0SZ_SHIFT ;
 unsigned long long ARM_LPAE_TCR_TG0_16K ;
 unsigned long long ARM_LPAE_TCR_TG0_4K ;
 unsigned long long ARM_LPAE_TCR_TG0_64K ;
 int GFP_KERNEL ;
 int IO_PGTABLE_QUIRK_ARM_NS ;
 int IO_PGTABLE_QUIRK_NON_STRICT ;



 int __arm_lpae_alloc_pages (int ,int ,struct io_pgtable_cfg*) ;
 struct arm_lpae_io_pgtable* arm_lpae_alloc_pgtable (struct io_pgtable_cfg*) ;
 int kfree (struct arm_lpae_io_pgtable*) ;
 int virt_to_phys (int ) ;
 int wmb () ;

__attribute__((used)) static struct io_pgtable *
arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
{
 u64 reg;
 struct arm_lpae_io_pgtable *data;

 if (cfg->quirks & ~(IO_PGTABLE_QUIRK_ARM_NS |
       IO_PGTABLE_QUIRK_NON_STRICT))
  return ((void*)0);

 data = arm_lpae_alloc_pgtable(cfg);
 if (!data)
  return ((void*)0);


 if (cfg->coherent_walk) {
  reg = (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
        (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_IRGN0_SHIFT) |
        (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_ORGN0_SHIFT);
 } else {
  reg = (ARM_LPAE_TCR_SH_OS << ARM_LPAE_TCR_SH0_SHIFT) |
        (ARM_LPAE_TCR_RGN_NC << ARM_LPAE_TCR_IRGN0_SHIFT) |
        (ARM_LPAE_TCR_RGN_NC << ARM_LPAE_TCR_ORGN0_SHIFT);
 }

 switch (ARM_LPAE_GRANULE(data)) {
 case 129:
  reg |= ARM_LPAE_TCR_TG0_4K;
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
  reg |= (ARM_LPAE_TCR_PS_32_BIT << ARM_LPAE_TCR_IPS_SHIFT);
  break;
 case 36:
  reg |= (ARM_LPAE_TCR_PS_36_BIT << ARM_LPAE_TCR_IPS_SHIFT);
  break;
 case 40:
  reg |= (ARM_LPAE_TCR_PS_40_BIT << ARM_LPAE_TCR_IPS_SHIFT);
  break;
 case 42:
  reg |= (ARM_LPAE_TCR_PS_42_BIT << ARM_LPAE_TCR_IPS_SHIFT);
  break;
 case 44:
  reg |= (ARM_LPAE_TCR_PS_44_BIT << ARM_LPAE_TCR_IPS_SHIFT);
  break;
 case 48:
  reg |= (ARM_LPAE_TCR_PS_48_BIT << ARM_LPAE_TCR_IPS_SHIFT);
  break;
 case 52:
  reg |= (ARM_LPAE_TCR_PS_52_BIT << ARM_LPAE_TCR_IPS_SHIFT);
  break;
 default:
  goto out_free_data;
 }

 reg |= (64ULL - cfg->ias) << ARM_LPAE_TCR_T0SZ_SHIFT;


 reg |= ARM_LPAE_TCR_EPD1;
 cfg->arm_lpae_s1_cfg.tcr = reg;


 reg = (ARM_LPAE_MAIR_ATTR_NC
        << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_NC)) |
       (ARM_LPAE_MAIR_ATTR_WBRWA
        << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_CACHE)) |
       (ARM_LPAE_MAIR_ATTR_DEVICE
        << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_DEV)) |
       (ARM_LPAE_MAIR_ATTR_INC_OWBRWA
        << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_INC_OCACHE));

 cfg->arm_lpae_s1_cfg.mair[0] = reg;
 cfg->arm_lpae_s1_cfg.mair[1] = 0;


 data->pgd = __arm_lpae_alloc_pages(data->pgd_size, GFP_KERNEL, cfg);
 if (!data->pgd)
  goto out_free_data;


 wmb();


 cfg->arm_lpae_s1_cfg.ttbr[0] = virt_to_phys(data->pgd);
 cfg->arm_lpae_s1_cfg.ttbr[1] = 0;
 return &data->iop;

out_free_data:
 kfree(data);
 return ((void*)0);
}
