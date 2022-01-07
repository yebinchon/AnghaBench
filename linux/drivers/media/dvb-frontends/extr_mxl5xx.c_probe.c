
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mxl5xx_cfg {int ts_clk; int cap; int clk; } ;
struct mxl {TYPE_1__* base; int i2cdev; } ;
struct MXL_HYDRA_MPEGOUT_PARAM_T {int max_mpeg_clk_rate; void* mpeg_valid_pol; int mpeg_sync_pulse_width; void* mpeg_sync_pol; int mpeg_mode; int mpeg_error_indication; int mpeg_clk_type; int mpeg_clk_pol; int mpeg_clk_phase; int lsb_or_msb_first; int enable; } ;
typedef enum MXL_HYDRA_DEMOD_ID_E { ____Placeholder_MXL_HYDRA_DEMOD_ID_E } MXL_HYDRA_DEMOD_ID_E ;
struct TYPE_2__ {int type; int can_clkout; int demod_num; int tuner_num; int chan_bond; int chipversion; int sku_type; void* ts_map; } ;


 int MXL_ENABLE ;
 void* MXL_HYDRA_MPEG_ACTIVE_HIGH ;
 int MXL_HYDRA_MPEG_CLK_CONTINUOUS ;
 int MXL_HYDRA_MPEG_CLK_IN_PHASE ;
 int MXL_HYDRA_MPEG_CLK_PHASE_SHIFT_0_DEG ;
 int MXL_HYDRA_MPEG_ERR_INDICATION_DISABLED ;
 int MXL_HYDRA_MPEG_MODE_SERIAL_3_WIRE ;
 int MXL_HYDRA_MPEG_SERIAL_MSB_1ST ;
 int MXL_HYDRA_MPEG_SYNC_WIDTH_BIT ;
 int MXL_HYDRA_SKU_TYPE_541 ;
 int MXL_HYDRA_SKU_TYPE_542 ;
 int MXL_HYDRA_SKU_TYPE_544 ;
 int MXL_HYDRA_SKU_TYPE_561 ;
 int MXL_HYDRA_SKU_TYPE_568 ;
 int MXL_HYDRA_SKU_TYPE_581 ;
 int MXL_HYDRA_SKU_TYPE_582 ;
 int MXL_HYDRA_SKU_TYPE_584 ;
 int MXL_HYDRA_SKU_TYPE_585 ;
 int cfg_dev_xtal (struct mxl*,int ,int ,int ) ;
 int config_mux (struct mxl*) ;
 int config_ts (struct mxl*,int,struct MXL_HYDRA_MPEGOUT_PARAM_T*) ;
 int dev_info (int ,char*,int) ;
 int firmware_is_alive (struct mxl*) ;
 int get_fwinfo (struct mxl*) ;
 int load_fw (struct mxl*,struct mxl5xx_cfg*) ;
 int read_by_mnemonic (struct mxl*,int,int,int,int*) ;
 int set_drive_strength (struct mxl*,int) ;
 void* ts_map1_to_1 ;
 void* ts_map54x ;
 int update_by_mnemonic (struct mxl*,int,int,int,int) ;
 int validate_sku (struct mxl*) ;

__attribute__((used)) static int probe(struct mxl *state, struct mxl5xx_cfg *cfg)
{
 u32 chipver;
 int fw, status, j;
 struct MXL_HYDRA_MPEGOUT_PARAM_T mpeg_interface_cfg;

 state->base->ts_map = ts_map1_to_1;

 switch (state->base->type) {
 case 133:
 case 132:
  state->base->can_clkout = 1;
  state->base->demod_num = 8;
  state->base->tuner_num = 1;
  state->base->sku_type = MXL_HYDRA_SKU_TYPE_581;
  break;
 case 131:
  state->base->can_clkout = 1;
  state->base->demod_num = 8;
  state->base->tuner_num = 3;
  state->base->sku_type = MXL_HYDRA_SKU_TYPE_582;
  break;
 case 129:
  state->base->can_clkout = 0;
  state->base->demod_num = 8;
  state->base->tuner_num = 4;
  state->base->sku_type = MXL_HYDRA_SKU_TYPE_585;
  break;
 case 137:
  state->base->can_clkout = 0;
  state->base->demod_num = 4;
  state->base->tuner_num = 4;
  state->base->sku_type = MXL_HYDRA_SKU_TYPE_544;
  state->base->ts_map = ts_map54x;
  break;
 case 140:
 case 139:
  state->base->can_clkout = 0;
  state->base->demod_num = 4;
  state->base->tuner_num = 1;
  state->base->sku_type = MXL_HYDRA_SKU_TYPE_541;
  state->base->ts_map = ts_map54x;
  break;
 case 136:
 case 135:
  state->base->can_clkout = 0;
  state->base->demod_num = 6;
  state->base->tuner_num = 1;
  state->base->sku_type = MXL_HYDRA_SKU_TYPE_561;
  break;
 case 134:
  state->base->can_clkout = 0;
  state->base->demod_num = 8;
  state->base->tuner_num = 1;
  state->base->chan_bond = 1;
  state->base->sku_type = MXL_HYDRA_SKU_TYPE_568;
  break;
 case 138:
  state->base->can_clkout = 1;
  state->base->demod_num = 4;
  state->base->tuner_num = 3;
  state->base->sku_type = MXL_HYDRA_SKU_TYPE_542;
  state->base->ts_map = ts_map54x;
  break;
 case 128:
 case 130:
 default:
  state->base->can_clkout = 0;
  state->base->demod_num = 8;
  state->base->tuner_num = 4;
  state->base->sku_type = MXL_HYDRA_SKU_TYPE_584;
  break;
 }

 status = validate_sku(state);
 if (status)
  return status;

 update_by_mnemonic(state, 0x80030014, 9, 1, 1);
 update_by_mnemonic(state, 0x8003003C, 12, 1, 1);
 status = read_by_mnemonic(state, 0x80030000, 12, 4, &chipver);
 if (status)
  state->base->chipversion = 0;
 else
  state->base->chipversion = (chipver == 2) ? 2 : 1;
 dev_info(state->i2cdev, "Hydra chip version %u\n",
  state->base->chipversion);

 cfg_dev_xtal(state, cfg->clk, cfg->cap, 0);

 fw = firmware_is_alive(state);
 if (!fw) {
  status = load_fw(state, cfg);
  if (status)
   return status;
 }
 get_fwinfo(state);

 config_mux(state);
 mpeg_interface_cfg.enable = MXL_ENABLE;
 mpeg_interface_cfg.lsb_or_msb_first = MXL_HYDRA_MPEG_SERIAL_MSB_1ST;

 if (cfg->ts_clk)
  mpeg_interface_cfg.max_mpeg_clk_rate = cfg->ts_clk;
 else
  mpeg_interface_cfg.max_mpeg_clk_rate = 69;
 mpeg_interface_cfg.mpeg_clk_phase = MXL_HYDRA_MPEG_CLK_PHASE_SHIFT_0_DEG;
 mpeg_interface_cfg.mpeg_clk_pol = MXL_HYDRA_MPEG_CLK_IN_PHASE;

 mpeg_interface_cfg.mpeg_clk_type = MXL_HYDRA_MPEG_CLK_CONTINUOUS;
 mpeg_interface_cfg.mpeg_error_indication =
  MXL_HYDRA_MPEG_ERR_INDICATION_DISABLED;
 mpeg_interface_cfg.mpeg_mode = MXL_HYDRA_MPEG_MODE_SERIAL_3_WIRE;
 mpeg_interface_cfg.mpeg_sync_pol = MXL_HYDRA_MPEG_ACTIVE_HIGH;
 mpeg_interface_cfg.mpeg_sync_pulse_width = MXL_HYDRA_MPEG_SYNC_WIDTH_BIT;
 mpeg_interface_cfg.mpeg_valid_pol = MXL_HYDRA_MPEG_ACTIVE_HIGH;

 for (j = 0; j < state->base->demod_num; j++) {
  status = config_ts(state, (enum MXL_HYDRA_DEMOD_ID_E) j,
       &mpeg_interface_cfg);
  if (status)
   return status;
 }
 set_drive_strength(state, 1);
 return 0;
}
