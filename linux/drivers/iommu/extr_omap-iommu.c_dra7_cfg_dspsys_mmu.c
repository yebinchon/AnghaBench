
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_iommu {int id; int syscfg; } ;


 int DSP_SYS_MMU_CONFIG ;
 int DSP_SYS_MMU_CONFIG_EN_SHIFT ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void dra7_cfg_dspsys_mmu(struct omap_iommu *obj, bool enable)
{
 u32 val, mask;

 if (!obj->syscfg)
  return;

 mask = (1 << (obj->id * DSP_SYS_MMU_CONFIG_EN_SHIFT));
 val = enable ? mask : 0;
 regmap_update_bits(obj->syscfg, DSP_SYS_MMU_CONFIG, mask, val);
}
