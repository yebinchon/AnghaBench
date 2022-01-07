
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ocrdma_reg_nsmr_cont {int num_pbl_offset; int last; TYPE_1__* pbl; int lrkey; } ;
struct ocrdma_mqe {int dummy; } ;
struct ocrdma_hw_mr {TYPE_2__* pbl_table; int lkey; } ;
struct ocrdma_dev {int dummy; } ;
struct TYPE_4__ {int pa; } ;
struct TYPE_3__ {int lo; int hi; } ;


 int ENOMEM ;
 int OCRDMA_CMD_REGISTER_NSMR_CONT ;
 int OCRDMA_REG_NSMR_CONT_LAST_SHIFT ;
 int OCRDMA_REG_NSMR_CONT_NUM_PBL_SHIFT ;
 int OCRDMA_REG_NSMR_CONT_PBL_SHIFT_MASK ;
 int kfree (struct ocrdma_reg_nsmr_cont*) ;
 struct ocrdma_reg_nsmr_cont* ocrdma_init_emb_mqe (int ,int) ;
 int ocrdma_mbx_cmd (struct ocrdma_dev*,struct ocrdma_mqe*) ;
 int upper_32_bits (int) ;

__attribute__((used)) static int ocrdma_mbx_reg_mr_cont(struct ocrdma_dev *dev,
      struct ocrdma_hw_mr *hwmr, u32 pbl_cnt,
      u32 pbl_offset, u32 last)
{
 int status;
 int i;
 struct ocrdma_reg_nsmr_cont *cmd;

 cmd = ocrdma_init_emb_mqe(OCRDMA_CMD_REGISTER_NSMR_CONT, sizeof(*cmd));
 if (!cmd)
  return -ENOMEM;
 cmd->lrkey = hwmr->lkey;
 cmd->num_pbl_offset = (pbl_cnt << OCRDMA_REG_NSMR_CONT_NUM_PBL_SHIFT) |
     (pbl_offset & OCRDMA_REG_NSMR_CONT_PBL_SHIFT_MASK);
 cmd->last = last << OCRDMA_REG_NSMR_CONT_LAST_SHIFT;

 for (i = 0; i < pbl_cnt; i++) {
  cmd->pbl[i].lo =
      (u32) (hwmr->pbl_table[i + pbl_offset].pa & 0xffffffff);
  cmd->pbl[i].hi =
      upper_32_bits(hwmr->pbl_table[i + pbl_offset].pa);
 }
 status = ocrdma_mbx_cmd(dev, (struct ocrdma_mqe *)cmd);

 kfree(cmd);
 return status;
}
