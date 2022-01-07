
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int APPLESMC_CMD_PORT ;
 int APPLESMC_MAX_WAIT ;
 int APPLESMC_MIN_WAIT ;
 int APPLESMC_RETRY_WAIT ;
 int EIO ;
 int inb (int ) ;
 int outb (int,int ) ;
 int pr_warn (char*,int,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int send_byte(u8 cmd, u16 port)
{
 u8 status;
 int us;

 outb(cmd, port);
 for (us = APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<= 1) {
  udelay(us);
  status = inb(APPLESMC_CMD_PORT);

  if (status & 0x02)
   continue;

  if (status & 0x04)
   return 0;

  if (us << 1 == APPLESMC_MAX_WAIT)
   break;

  udelay(APPLESMC_RETRY_WAIT);
  outb(cmd, port);
 }

 pr_warn("send_byte(0x%02x, 0x%04x) fail: 0x%02x\n", cmd, port, status);
 return -EIO;
}
