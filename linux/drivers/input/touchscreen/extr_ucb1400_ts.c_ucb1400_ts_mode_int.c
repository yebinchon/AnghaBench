
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1400_ts {int ac97; } ;


 int UCB_TS_CR ;
 int UCB_TS_CR_MODE_INT ;
 int UCB_TS_CR_TSMX_POW ;
 int UCB_TS_CR_TSMY_GND ;
 int UCB_TS_CR_TSPX_POW ;
 int UCB_TS_CR_TSPY_GND ;
 int ucb1400_reg_write (int ,int ,int) ;

__attribute__((used)) static void ucb1400_ts_mode_int(struct ucb1400_ts *ucb)
{
 ucb1400_reg_write(ucb->ac97, UCB_TS_CR,
   UCB_TS_CR_TSMX_POW | UCB_TS_CR_TSPX_POW |
   UCB_TS_CR_TSMY_GND | UCB_TS_CR_TSPY_GND |
   UCB_TS_CR_MODE_INT);
}
