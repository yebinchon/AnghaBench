
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct dsi_data {int module_id; int syscon; } ;


 int ENODEV ;
 unsigned int OMAP4_DSI1_LANEENABLE_MASK ;
 unsigned int OMAP4_DSI1_LANEENABLE_SHIFT ;
 unsigned int OMAP4_DSI1_PIPD_MASK ;
 unsigned int OMAP4_DSI1_PIPD_SHIFT ;
 unsigned int OMAP4_DSI2_LANEENABLE_MASK ;
 unsigned int OMAP4_DSI2_LANEENABLE_SHIFT ;
 unsigned int OMAP4_DSI2_PIPD_MASK ;
 unsigned int OMAP4_DSI2_PIPD_SHIFT ;
 int OMAP4_DSIPHY_SYSCON_OFFSET ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int dsi_omap4_mux_pads(struct dsi_data *dsi, unsigned int lanes)
{
 u32 enable_mask, enable_shift;
 u32 pipd_mask, pipd_shift;

 if (dsi->module_id == 0) {
  enable_mask = OMAP4_DSI1_LANEENABLE_MASK;
  enable_shift = OMAP4_DSI1_LANEENABLE_SHIFT;
  pipd_mask = OMAP4_DSI1_PIPD_MASK;
  pipd_shift = OMAP4_DSI1_PIPD_SHIFT;
 } else if (dsi->module_id == 1) {
  enable_mask = OMAP4_DSI2_LANEENABLE_MASK;
  enable_shift = OMAP4_DSI2_LANEENABLE_SHIFT;
  pipd_mask = OMAP4_DSI2_PIPD_MASK;
  pipd_shift = OMAP4_DSI2_PIPD_SHIFT;
 } else {
  return -ENODEV;
 }

 return regmap_update_bits(dsi->syscon, OMAP4_DSIPHY_SYSCON_OFFSET,
  enable_mask | pipd_mask,
  (lanes << enable_shift) | (lanes << pipd_shift));
}
