
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_vbif {struct dpu_hw_blk_reg_map hw; } ;


 int DPU_REG_READ (struct dpu_hw_blk_reg_map*,int) ;
 int DPU_REG_WRITE (struct dpu_hw_blk_reg_map*,int,int) ;
 int MAX_XIN_COUNT ;
 int VBIF_OUT_AXI_AMEMTYPE_CONF0 ;
 int VBIF_OUT_AXI_AMEMTYPE_CONF1 ;

__attribute__((used)) static void dpu_hw_set_mem_type(struct dpu_hw_vbif *vbif,
  u32 xin_id, u32 value)
{
 struct dpu_hw_blk_reg_map *c;
 u32 reg_off;
 u32 bit_off;
 u32 reg_val;





 if (!vbif || xin_id >= MAX_XIN_COUNT || xin_id >= 16)
  return;

 c = &vbif->hw;

 if (xin_id >= 8) {
  xin_id -= 8;
  reg_off = VBIF_OUT_AXI_AMEMTYPE_CONF1;
 } else {
  reg_off = VBIF_OUT_AXI_AMEMTYPE_CONF0;
 }
 bit_off = (xin_id & 0x7) * 4;
 reg_val = DPU_REG_READ(c, reg_off);
 reg_val &= ~(0x7 << bit_off);
 reg_val |= (value & 0x7) << bit_off;
 DPU_REG_WRITE(c, reg_off, reg_val);
}
