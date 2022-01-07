
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cxd2880_tnrdmd {scalar_t__ state; int srl_ts_clk_mod_cnts; int srl_ts_clk_frq; int ts_byte_clk_manual_setting; int is_ts_backwards_compatible_mode; int fixed_clk_mode; int is_cable_input; int en_fef_intmtnt_base; int en_fef_intmtnt_lite; int blind_tune_dvbt2_first; scalar_t__ diver_mode; struct cxd2880_tnrdmd* diver_sub; } ;
typedef enum cxd2880_tnrdmd_serial_ts_clk { ____Placeholder_cxd2880_tnrdmd_serial_ts_clk } cxd2880_tnrdmd_serial_ts_clk ;
typedef enum cxd2880_tnrdmd_clockmode { ____Placeholder_cxd2880_tnrdmd_clockmode } cxd2880_tnrdmd_clockmode ;
typedef enum cxd2880_tnrdmd_cfg_id { ____Placeholder_cxd2880_tnrdmd_cfg_id } cxd2880_tnrdmd_cfg_id ;


 int CXD2880_IO_TGT_DMD ;
 int CXD2880_IO_TGT_SYS ;
 int CXD2880_TNRDMD_CLOCKMODE_C ;
 int CXD2880_TNRDMD_CLOCKMODE_UNKNOWN ;
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_MAIN ;
 scalar_t__ CXD2880_TNRDMD_STATE_ACTIVE ;
 scalar_t__ CXD2880_TNRDMD_STATE_SLEEP ;
 int EINVAL ;
 int cxd2880_tnrdmd_set_and_save_reg_bits (struct cxd2880_tnrdmd*,int ,int,int,int,int) ;

int cxd2880_tnrdmd_set_cfg(struct cxd2880_tnrdmd *tnr_dmd,
      enum cxd2880_tnrdmd_cfg_id id,
      int value)
{
 int ret = 0;
 u8 data[2] = { 0 };
 u8 need_sub_setting = 0;

 if (!tnr_dmd)
  return -EINVAL;

 if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP &&
     tnr_dmd->state != CXD2880_TNRDMD_STATE_ACTIVE)
  return -EINVAL;

 switch (id) {
 case 147:
  if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0xc4,
        value ? 0x00 : 0x10,
        0x10);
  if (ret)
   return ret;
  break;

 case 134:
  if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0xc5,
        value ? 0x00 : 0x02,
        0x02);
  if (ret)
   return ret;
  break;

 case 135:
  if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0xc5,
        value ? 0x00 : 0x04,
        0x04);
  if (ret)
   return ret;
  break;

 case 141:
  if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0xcb,
        value ? 0x00 : 0x01,
        0x01);
  if (ret)
   return ret;
  break;

 case 148:
  if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0xc5,
        value ? 0x01 : 0x00,
        0x01);
  if (ret)
   return ret;
  break;

 case 144:
  if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP)
   return -EINVAL;

  tnr_dmd->srl_ts_clk_mod_cnts = value ? 0x01 : 0x00;
  break;

 case 142:
  if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP)
   return -EINVAL;

  if (value < 0 || value > 0x1f)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0xc6, value,
        0x1f);
  if (ret)
   return ret;
  break;

 case 133:
  if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP)
   return -EINVAL;

  if (value < 0 || value > 0x1f)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0xc8, value,
        0x1f);
  if (ret)
   return ret;
  break;

 case 140:
  if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP)
   return -EINVAL;

  if (value < 0 || value > 0x1f)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0xc9, value,
        0x1f);
  if (ret)
   return ret;
  break;

 case 139:
  if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0x91,
        value ? 0x01 : 0x00,
        0x01);
  if (ret)
   return ret;
  break;

 case 138:
  if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_SYS,
        0x00, 0x51, value,
        0x3f);
  if (ret)
   return ret;
  break;

 case 136:
  if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_SYS,
        0x00, 0x50,
        value ? 0x80 : 0x00,
        0x80);
  if (ret)
   return ret;
  break;

 case 137:
  if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_SYS,
        0x00, 0x50, value,
        0x3f);
  if (ret)
   return ret;
  break;

 case 143:
  if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP)
   return -EINVAL;

  if (value < 0 || value > 1)
   return -EINVAL;

  tnr_dmd->srl_ts_clk_frq =
      (enum cxd2880_tnrdmd_serial_ts_clk)value;
  break;

 case 145:
  if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP)
   return -EINVAL;

  if (value < 0 || value > 0xff)
   return -EINVAL;

  tnr_dmd->ts_byte_clk_manual_setting = value;

  break;

 case 128:
  if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP)
   return -EINVAL;

  if (value < 0 || value > 7)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0xd6, value,
        0x07);
  if (ret)
   return ret;

  break;

 case 132:
  if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP)
   return -EINVAL;

  tnr_dmd->is_ts_backwards_compatible_mode = value ? 1 : 0;

  break;

 case 146:
  if (value < 0 || value > 0x1000)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0x22,
        value ? 0x01 : 0x00,
        0x01);
  if (ret)
   return ret;

  data[0] = (value >> 8) & 0x1f;
  data[1] = value & 0xff;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0x23,
        data[0], 0x1f);
  if (ret)
   return ret;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0x24,
        data[1], 0xff);
  if (ret)
   return ret;

  break;

 case 151:
  data[0] = (value >> 8) & 0xff;
  data[1] = value & 0xff;
  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_SYS,
        0x00, 0x48, data[0],
        0xff);
  if (ret)
   return ret;
  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_SYS,
        0x00, 0x49, data[1],
        0xff);
  if (ret)
   return ret;
  break;

 case 149:
  data[0] = value & 0x07;
  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_SYS,
        0x00, 0x4a, data[0],
        0x07);
  if (ret)
   return ret;
  break;

 case 150:
  data[0] = (value & 0x07) << 3;
  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_SYS,
        0x00, 0x4a, data[0],
        0x38);
  if (ret)
   return ret;
  break;

 case 152:
  if (value < CXD2880_TNRDMD_CLOCKMODE_UNKNOWN ||
      value > CXD2880_TNRDMD_CLOCKMODE_C)
   return -EINVAL;
  tnr_dmd->fixed_clk_mode = (enum cxd2880_tnrdmd_clockmode)value;
  break;

 case 161:
  tnr_dmd->is_cable_input = value ? 1 : 0;
  break;

 case 159:
  tnr_dmd->en_fef_intmtnt_base = value ? 1 : 0;
  break;

 case 158:
  tnr_dmd->en_fef_intmtnt_lite = value ? 1 : 0;
  break;

 case 131:
  data[0] = (value >> 8) & 0x07;
  data[1] = value & 0xff;
  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0x99, data[0],
        0x07);
  if (ret)
   return ret;
  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0x9a, data[1],
        0xff);
  if (ret)
   return ret;
  break;

 case 130:
  data[0] = (value >> 8) & 0x07;
  data[1] = value & 0xff;
  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0x9b, data[0],
        0x07);
  if (ret)
   return ret;
  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0x9c, data[1],
        0xff);
  if (ret)
   return ret;
  break;

 case 129:
  data[0] = (value >> 8) & 0x07;
  data[1] = value & 0xff;
  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0x9d, data[0],
        0x07);
  if (ret)
   return ret;
  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x00, 0x9e, data[1],
        0xff);
  if (ret)
   return ret;
  break;

 case 162:
  tnr_dmd->blind_tune_dvbt2_first = value ? 1 : 0;
  break;

 case 155:
  if (value < 0 || value > 31)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x10, 0x60,
        value & 0x1f, 0x1f);
  if (ret)
   return ret;
  break;

 case 153:
  if (value < 0 || value > 7)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x10, 0x6f,
        value & 0x07, 0x07);
  if (ret)
   return ret;
  break;

 case 160:
  if (value < 0 || value > 15)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x20, 0x72,
        value & 0x0f, 0x0f);
  if (ret)
   return ret;
  break;

 case 157:
  if (value < 0 || value > 15)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x20, 0x6f,
        value & 0x0f, 0x0f);
  if (ret)
   return ret;
  break;

 case 154:
  if (value < 0 || value > 15)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x10, 0x5c,
        value & 0x0f, 0x0f);
  if (ret)
   return ret;
  break;

 case 156:
  if (value < 0 || value > 15)
   return -EINVAL;

  ret =
      cxd2880_tnrdmd_set_and_save_reg_bits(tnr_dmd,
        CXD2880_IO_TGT_DMD,
        0x24, 0xdc,
        value & 0x0f, 0x0f);
  if (ret)
   return ret;
  break;

 default:
  return -EINVAL;
 }

 if (need_sub_setting &&
     tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN)
  ret = cxd2880_tnrdmd_set_cfg(tnr_dmd->diver_sub, id, value);

 return ret;
}
