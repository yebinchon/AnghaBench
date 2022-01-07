
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpu_mdss_cfg {TYPE_2__* mdp; TYPE_1__* caps; } ;
struct dpu_hw_blk_reg_map {int blk_off; } ;
struct dpu_hw_mdp {struct dpu_hw_blk_reg_map hw; } ;
struct TYPE_4__ {int ubwc_static; } ;
struct TYPE_3__ {int ubwc_version; } ;


 int DPU_REG_WRITE (struct dpu_hw_blk_reg_map*,int ,int ) ;
 int IS_UBWC_20_SUPPORTED (int ) ;
 int UBWC_STATIC ;

__attribute__((used)) static void dpu_hw_reset_ubwc(struct dpu_hw_mdp *mdp, struct dpu_mdss_cfg *m)
{
 struct dpu_hw_blk_reg_map c;

 if (!mdp || !m)
  return;

 if (!IS_UBWC_20_SUPPORTED(m->caps->ubwc_version))
  return;


 c = mdp->hw;
 c.blk_off = 0x0;
 DPU_REG_WRITE(&c, UBWC_STATIC, m->mdp[0].ubwc_static);
}
