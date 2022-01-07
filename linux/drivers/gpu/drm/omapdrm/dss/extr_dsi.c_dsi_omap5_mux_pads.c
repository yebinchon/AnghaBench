
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct dsi_data {int module_id; int syscon; } ;


 int ENODEV ;
 unsigned int OMAP5_DSI1_LANEENABLE_SHIFT ;
 unsigned int OMAP5_DSI2_LANEENABLE_SHIFT ;
 int OMAP5_DSIPHY_SYSCON_OFFSET ;
 unsigned int OMAP5_DSI_LANEENABLE_MASK ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int dsi_omap5_mux_pads(struct dsi_data *dsi, unsigned int lanes)
{
 u32 enable_shift;

 if (dsi->module_id == 0)
  enable_shift = OMAP5_DSI1_LANEENABLE_SHIFT;
 else if (dsi->module_id == 1)
  enable_shift = OMAP5_DSI2_LANEENABLE_SHIFT;
 else
  return -ENODEV;

 return regmap_update_bits(dsi->syscon, OMAP5_DSIPHY_SYSCON_OFFSET,
  OMAP5_DSI_LANEENABLE_MASK << enable_shift,
  lanes << enable_shift);
}
