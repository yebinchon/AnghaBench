
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_vbif {struct dpu_hw_blk_reg_map hw; } ;


 int BIT (int) ;
 int DPU_REG_READ (struct dpu_hw_blk_reg_map*,int ) ;
 int VBIF_XIN_HALT_CTRL1 ;

__attribute__((used)) static bool dpu_hw_get_halt_ctrl(struct dpu_hw_vbif *vbif,
  u32 xin_id)
{
 struct dpu_hw_blk_reg_map *c = &vbif->hw;
 u32 reg_val;

 reg_val = DPU_REG_READ(c, VBIF_XIN_HALT_CTRL1);

 return (reg_val & BIT(xin_id)) ? 1 : 0;
}
