
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dpu_hw_blk_reg_map {int dummy; } ;


 scalar_t__ DPU_REG_READ (struct dpu_hw_blk_reg_map*,scalar_t__) ;
 scalar_t__ QSEED3_HW_VERSION ;

u32 dpu_hw_get_scaler3_ver(struct dpu_hw_blk_reg_map *c,
   u32 scaler_offset)
{
 return DPU_REG_READ(c, QSEED3_HW_VERSION + scaler_offset);
}
