
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1400_ts {int stopped; int ac97; int irq; int ts_wait; } ;


 int UCB_TS_CR ;
 int disable_irq (int ) ;
 int mb () ;
 int ucb1400_reg_write (int ,int ,int ) ;
 int ucb1400_ts_irq_disable (struct ucb1400_ts*) ;
 int wake_up (int *) ;

__attribute__((used)) static void ucb1400_ts_stop(struct ucb1400_ts *ucb)
{

 ucb->stopped = 1;
 mb();
 wake_up(&ucb->ts_wait);
 disable_irq(ucb->irq);

 ucb1400_ts_irq_disable(ucb);
 ucb1400_reg_write(ucb->ac97, UCB_TS_CR, 0);
}
