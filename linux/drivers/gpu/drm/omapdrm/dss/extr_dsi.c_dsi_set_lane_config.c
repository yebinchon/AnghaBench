
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct dsi_data {int num_lanes_used; unsigned int num_lanes_supported; TYPE_1__* lanes; } ;
typedef enum dsi_lane_function { ____Placeholder_dsi_lane_function } dsi_lane_function ;
struct TYPE_2__ {int const function; unsigned int polarity; } ;


 int DSI_COMPLEXIO_CFG1 ;





 int EINVAL ;
 int FLD_MOD (int ,unsigned int,unsigned int,unsigned int) ;
 int dsi_read_reg (struct dsi_data*,int ) ;
 int dsi_write_reg (struct dsi_data*,int ,int ) ;

__attribute__((used)) static int dsi_set_lane_config(struct dsi_data *dsi)
{
 static const u8 offsets[] = { 0, 4, 8, 12, 16 };
 static const enum dsi_lane_function functions[] = {
  132,
  131,
  130,
  129,
  128,
 };
 u32 r;
 int i;

 r = dsi_read_reg(dsi, DSI_COMPLEXIO_CFG1);

 for (i = 0; i < dsi->num_lanes_used; ++i) {
  unsigned int offset = offsets[i];
  unsigned int polarity, lane_number;
  unsigned int t;

  for (t = 0; t < dsi->num_lanes_supported; ++t)
   if (dsi->lanes[t].function == functions[i])
    break;

  if (t == dsi->num_lanes_supported)
   return -EINVAL;

  lane_number = t;
  polarity = dsi->lanes[t].polarity;

  r = FLD_MOD(r, lane_number + 1, offset + 2, offset);
  r = FLD_MOD(r, polarity, offset + 3, offset + 3);
 }


 for (; i < dsi->num_lanes_supported; ++i) {
  unsigned int offset = offsets[i];

  r = FLD_MOD(r, 0, offset + 2, offset);
  r = FLD_MOD(r, 0, offset + 3, offset + 3);
 }

 dsi_write_reg(dsi, DSI_COMPLEXIO_CFG1, r);

 return 0;
}
