
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_csc_cfg {int const* csc_mv; int* csc_pre_lv; int* csc_post_lv; int* csc_pre_bv; int* csc_post_bv; } ;


 int DPU_REG_WRITE (struct dpu_hw_blk_reg_map*,int,int) ;

void dpu_hw_csc_setup(struct dpu_hw_blk_reg_map *c,
  u32 csc_reg_off,
  struct dpu_csc_cfg *data, bool csc10)
{
 static const u32 matrix_shift = 7;
 u32 clamp_shift = csc10 ? 16 : 8;
 u32 val;


 val = ((data->csc_mv[0] >> matrix_shift) & 0x1FFF) |
  (((data->csc_mv[1] >> matrix_shift) & 0x1FFF) << 16);
 DPU_REG_WRITE(c, csc_reg_off, val);
 val = ((data->csc_mv[2] >> matrix_shift) & 0x1FFF) |
  (((data->csc_mv[3] >> matrix_shift) & 0x1FFF) << 16);
 DPU_REG_WRITE(c, csc_reg_off + 0x4, val);
 val = ((data->csc_mv[4] >> matrix_shift) & 0x1FFF) |
  (((data->csc_mv[5] >> matrix_shift) & 0x1FFF) << 16);
 DPU_REG_WRITE(c, csc_reg_off + 0x8, val);
 val = ((data->csc_mv[6] >> matrix_shift) & 0x1FFF) |
  (((data->csc_mv[7] >> matrix_shift) & 0x1FFF) << 16);
 DPU_REG_WRITE(c, csc_reg_off + 0xc, val);
 val = (data->csc_mv[8] >> matrix_shift) & 0x1FFF;
 DPU_REG_WRITE(c, csc_reg_off + 0x10, val);


 val = (data->csc_pre_lv[0] << clamp_shift) | data->csc_pre_lv[1];
 DPU_REG_WRITE(c, csc_reg_off + 0x14, val);
 val = (data->csc_pre_lv[2] << clamp_shift) | data->csc_pre_lv[3];
 DPU_REG_WRITE(c, csc_reg_off + 0x18, val);
 val = (data->csc_pre_lv[4] << clamp_shift) | data->csc_pre_lv[5];
 DPU_REG_WRITE(c, csc_reg_off + 0x1c, val);


 val = (data->csc_post_lv[0] << clamp_shift) | data->csc_post_lv[1];
 DPU_REG_WRITE(c, csc_reg_off + 0x20, val);
 val = (data->csc_post_lv[2] << clamp_shift) | data->csc_post_lv[3];
 DPU_REG_WRITE(c, csc_reg_off + 0x24, val);
 val = (data->csc_post_lv[4] << clamp_shift) | data->csc_post_lv[5];
 DPU_REG_WRITE(c, csc_reg_off + 0x28, val);


 DPU_REG_WRITE(c, csc_reg_off + 0x2c, data->csc_pre_bv[0]);
 DPU_REG_WRITE(c, csc_reg_off + 0x30, data->csc_pre_bv[1]);
 DPU_REG_WRITE(c, csc_reg_off + 0x34, data->csc_pre_bv[2]);


 DPU_REG_WRITE(c, csc_reg_off + 0x38, data->csc_post_bv[0]);
 DPU_REG_WRITE(c, csc_reg_off + 0x3c, data->csc_post_bv[1]);
 DPU_REG_WRITE(c, csc_reg_off + 0x40, data->csc_post_bv[2]);
}
