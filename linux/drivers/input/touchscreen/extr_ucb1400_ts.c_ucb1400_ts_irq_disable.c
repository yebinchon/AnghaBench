
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1400_ts {int ac97; } ;


 int UCB_IE_FAL ;
 int ucb1400_reg_write (int ,int ,int ) ;

__attribute__((used)) static void ucb1400_ts_irq_disable(struct ucb1400_ts *ucb)
{
 ucb1400_reg_write(ucb->ac97, UCB_IE_FAL, 0);
}
