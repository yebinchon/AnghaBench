
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_kbc {int mmio; TYPE_1__* pin_cfg; } ;
struct TYPE_2__ {int type; int num; } ;


 int KBC_COL_CFG0_0 ;
 int KBC_MAX_GPIO ;
 int KBC_ROW_CFG0_0 ;



 int readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static void tegra_kbc_config_pins(struct tegra_kbc *kbc)
{
 int i;

 for (i = 0; i < KBC_MAX_GPIO; i++) {
  u32 r_shft = 5 * (i % 6);
  u32 c_shft = 4 * (i % 8);
  u32 r_mask = 0x1f << r_shft;
  u32 c_mask = 0x0f << c_shft;
  u32 r_offs = (i / 6) * 4 + KBC_ROW_CFG0_0;
  u32 c_offs = (i / 8) * 4 + KBC_COL_CFG0_0;
  u32 row_cfg = readl(kbc->mmio + r_offs);
  u32 col_cfg = readl(kbc->mmio + c_offs);

  row_cfg &= ~r_mask;
  col_cfg &= ~c_mask;

  switch (kbc->pin_cfg[i].type) {
  case 128:
   row_cfg |= ((kbc->pin_cfg[i].num << 1) | 1) << r_shft;
   break;

  case 130:
   col_cfg |= ((kbc->pin_cfg[i].num << 1) | 1) << c_shft;
   break;

  case 129:
   break;
  }

  writel(row_cfg, kbc->mmio + r_offs);
  writel(col_cfg, kbc->mmio + c_offs);
 }
}
