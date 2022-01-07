
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucb1400_ts {TYPE_1__* ts_idev; int ac97; } ;
struct TYPE_2__ {int dev; } ;


 int UCB_IE_CLEAR ;
 int UCB_IE_STATUS ;
 unsigned int UCB_IE_TSPX ;
 int dev_dbg (int *,char*,unsigned int) ;
 unsigned int ucb1400_reg_read (int ,int ) ;
 int ucb1400_reg_write (int ,int ,unsigned int) ;
 int ucb1400_ts_irq_disable (struct ucb1400_ts*) ;

__attribute__((used)) static void ucb1400_clear_pending_irq(struct ucb1400_ts *ucb)
{
 unsigned int isr;

 isr = ucb1400_reg_read(ucb->ac97, UCB_IE_STATUS);
 ucb1400_reg_write(ucb->ac97, UCB_IE_CLEAR, isr);
 ucb1400_reg_write(ucb->ac97, UCB_IE_CLEAR, 0);

 if (isr & UCB_IE_TSPX)
  ucb1400_ts_irq_disable(ucb);
 else
  dev_dbg(&ucb->ts_idev->dev,
   "ucb1400: unexpected IE_STATUS = %#x\n", isr);
}
