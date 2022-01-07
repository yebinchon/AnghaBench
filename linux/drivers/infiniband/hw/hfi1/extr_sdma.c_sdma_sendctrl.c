
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sdma_engine {int p_senddmactrl; int senddmactrl_lock; int this_idx; int dd; } ;


 int CTRL ;
 int CTRL_SDMA_CLEANUP_SMASK ;
 int CTRL_SDMA_ENABLE_SMASK ;
 int CTRL_SDMA_HALT_SMASK ;
 int CTRL_SDMA_INT_ENABLE_SMASK ;
 int SD (int ) ;
 unsigned int SDMA_SENDCTRL_OP_CLEANUP ;
 unsigned int SDMA_SENDCTRL_OP_ENABLE ;
 unsigned int SDMA_SENDCTRL_OP_HALT ;
 unsigned int SDMA_SENDCTRL_OP_INTENABLE ;
 int dd_dev_err (int ,char*,int ,int,int,int,int) ;
 int sdma_dumpstate (struct sdma_engine*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_sde_csr (struct sdma_engine*,int,int) ;

__attribute__((used)) static void sdma_sendctrl(struct sdma_engine *sde, unsigned op)
{
 u64 set_senddmactrl = 0;
 u64 clr_senddmactrl = 0;
 unsigned long flags;
 if (op & SDMA_SENDCTRL_OP_ENABLE)
  set_senddmactrl |= SD(CTRL_SDMA_ENABLE_SMASK);
 else
  clr_senddmactrl |= SD(CTRL_SDMA_ENABLE_SMASK);

 if (op & SDMA_SENDCTRL_OP_INTENABLE)
  set_senddmactrl |= SD(CTRL_SDMA_INT_ENABLE_SMASK);
 else
  clr_senddmactrl |= SD(CTRL_SDMA_INT_ENABLE_SMASK);

 if (op & SDMA_SENDCTRL_OP_HALT)
  set_senddmactrl |= SD(CTRL_SDMA_HALT_SMASK);
 else
  clr_senddmactrl |= SD(CTRL_SDMA_HALT_SMASK);

 spin_lock_irqsave(&sde->senddmactrl_lock, flags);

 sde->p_senddmactrl |= set_senddmactrl;
 sde->p_senddmactrl &= ~clr_senddmactrl;

 if (op & SDMA_SENDCTRL_OP_CLEANUP)
  write_sde_csr(sde, SD(CTRL),
         sde->p_senddmactrl |
         SD(CTRL_SDMA_CLEANUP_SMASK));
 else
  write_sde_csr(sde, SD(CTRL), sde->p_senddmactrl);

 spin_unlock_irqrestore(&sde->senddmactrl_lock, flags);




}
