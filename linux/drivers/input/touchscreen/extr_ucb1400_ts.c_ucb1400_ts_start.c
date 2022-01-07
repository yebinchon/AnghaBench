
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1400_ts {int stopped; int irq; } ;


 int enable_irq (int ) ;
 int mb () ;
 int ucb1400_ts_irq_enable (struct ucb1400_ts*) ;
 int ucb1400_ts_mode_int (struct ucb1400_ts*) ;

__attribute__((used)) static void ucb1400_ts_start(struct ucb1400_ts *ucb)
{

 ucb->stopped = 0;
 mb();

 ucb1400_ts_mode_int(ucb);
 ucb1400_ts_irq_enable(ucb);

 enable_irq(ucb->irq);
}
