
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct dsi_data {int num_lanes_supported; TYPE_1__* lanes; } ;
struct TYPE_2__ {unsigned int polarity; } ;


 int DSI_DSIPHY_CFG10 ;
 int REG_FLD_MOD (struct dsi_data*,int ,int,int,int) ;

__attribute__((used)) static void dsi_cio_enable_lane_override(struct dsi_data *dsi,
      unsigned int mask_p,
      unsigned int mask_n)
{
 int i;
 u32 l;
 u8 lptxscp_start = dsi->num_lanes_supported == 3 ? 22 : 26;

 l = 0;

 for (i = 0; i < dsi->num_lanes_supported; ++i) {
  unsigned int p = dsi->lanes[i].polarity;

  if (mask_p & (1 << i))
   l |= 1 << (i * 2 + (p ? 0 : 1));

  if (mask_n & (1 << i))
   l |= 1 << (i * 2 + (p ? 1 : 0));
 }
 REG_FLD_MOD(dsi, DSI_DSIPHY_CFG10, l, lptxscp_start, 17);




 REG_FLD_MOD(dsi, DSI_DSIPHY_CFG10, 1, 27, 27);
}
