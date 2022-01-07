
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_mdp {struct dpu_hw_blk_reg_map hw; } ;


 int DPU_REG_WRITE (struct dpu_hw_blk_reg_map*,int ,int) ;
 int HDMI_DP_CORE_SELECT ;

__attribute__((used)) static void dpu_hw_intf_audio_select(struct dpu_hw_mdp *mdp)
{
 struct dpu_hw_blk_reg_map *c;

 if (!mdp)
  return;

 c = &mdp->hw;

 DPU_REG_WRITE(c, HDMI_DP_CORE_SELECT, 0x1);
}
