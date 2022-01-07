
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int APPLESMC_CMD_PORT ;
 int APPLESMC_MAX_WAIT ;
 int APPLESMC_MIN_WAIT ;
 int EIO ;
 int inb (int ) ;
 int pr_warn (char*,int) ;
 int udelay (int) ;

__attribute__((used)) static int wait_read(void)
{
 u8 status;
 int us;
 for (us = APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<= 1) {
  udelay(us);
  status = inb(APPLESMC_CMD_PORT);

  if (status & 0x01)
   return 0;
 }

 pr_warn("wait_read() fail: 0x%02x\n", status);
 return -EIO;
}
