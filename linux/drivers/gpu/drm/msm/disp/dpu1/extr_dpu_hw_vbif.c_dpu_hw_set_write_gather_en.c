
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_vbif {struct dpu_hw_blk_reg_map hw; } ;


 scalar_t__ BIT (scalar_t__) ;
 scalar_t__ DPU_REG_READ (struct dpu_hw_blk_reg_map*,int ) ;
 int DPU_REG_WRITE (struct dpu_hw_blk_reg_map*,int ,scalar_t__) ;
 scalar_t__ MAX_XIN_COUNT ;
 int VBIF_WRITE_GATHER_EN ;

__attribute__((used)) static void dpu_hw_set_write_gather_en(struct dpu_hw_vbif *vbif, u32 xin_id)
{
 struct dpu_hw_blk_reg_map *c;
 u32 reg_val;

 if (!vbif || xin_id >= MAX_XIN_COUNT)
  return;

 c = &vbif->hw;

 reg_val = DPU_REG_READ(c, VBIF_WRITE_GATHER_EN);
 reg_val |= BIT(xin_id);
 DPU_REG_WRITE(c, VBIF_WRITE_GATHER_EN, reg_val);
}
