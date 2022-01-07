
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cy8ctmg110 {int dummy; } ;


 int CY8CTMG110_TOUCH_WAKEUP_TIME ;
 int cy8ctmg110_write_regs (struct cy8ctmg110*,int ,int,unsigned char*) ;

__attribute__((used)) static int cy8ctmg110_set_sleepmode(struct cy8ctmg110 *ts, bool sleep)
{
 unsigned char reg_p[3];

 if (sleep) {
  reg_p[0] = 0x00;
  reg_p[1] = 0xff;
  reg_p[2] = 5;
 } else {
  reg_p[0] = 0x10;
  reg_p[1] = 0xff;
  reg_p[2] = 0;
 }

 return cy8ctmg110_write_regs(ts, CY8CTMG110_TOUCH_WAKEUP_TIME, 3, reg_p);
}
