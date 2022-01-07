
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_chan {int idx; } ;


 int WARN_ON (int) ;
 int XOR_INT_ERR_DECODE ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int ,int) ;
 int mv_chan_dump_regs (struct mv_xor_chan*) ;
 int mv_chan_to_devp (struct mv_xor_chan*) ;

__attribute__((used)) static void mv_chan_err_interrupt_handler(struct mv_xor_chan *chan,
       u32 intr_cause)
{
 if (intr_cause & XOR_INT_ERR_DECODE) {
  dev_dbg(mv_chan_to_devp(chan), "ignoring address decode error\n");
  return;
 }

 dev_err(mv_chan_to_devp(chan), "error on chan %d. intr cause 0x%08x\n",
  chan->idx, intr_cause);

 mv_chan_dump_regs(chan);
 WARN_ON(1);
}
