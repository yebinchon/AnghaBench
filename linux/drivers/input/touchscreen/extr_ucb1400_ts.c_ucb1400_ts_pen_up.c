
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1400_ts {int ac97; } ;


 int UCB_TS_CR ;
 unsigned short UCB_TS_CR_TSMX_LOW ;
 unsigned short UCB_TS_CR_TSPX_LOW ;
 unsigned short ucb1400_reg_read (int ,int ) ;

__attribute__((used)) static int ucb1400_ts_pen_up(struct ucb1400_ts *ucb)
{
 unsigned short val = ucb1400_reg_read(ucb->ac97, UCB_TS_CR);

 return val & (UCB_TS_CR_TSPX_LOW | UCB_TS_CR_TSMX_LOW);
}
