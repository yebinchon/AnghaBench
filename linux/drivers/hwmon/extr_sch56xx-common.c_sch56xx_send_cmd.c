
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int EIO ;
 int SCH56XX_CMD_READ ;
 int SCH56XX_CMD_WRITE ;
 int inb (int) ;
 int msleep (int) ;
 int outb (int,int) ;
 int pr_err (char*,int,int) ;
 int pr_warn (char*,unsigned int,int) ;

__attribute__((used)) static int sch56xx_send_cmd(u16 addr, u8 cmd, u16 reg, u8 v)
{
 u8 val;
 int i;







 const int max_busy_polls = 64;
 const int max_lazy_polls = 32;


 val = inb(addr + 1);
 outb(val, addr + 1);


 outb(0x00, addr + 2);
 outb(0x80, addr + 3);


 outb(cmd, addr + 4);
 outb(0x01, addr + 5);
 outb(0x04, addr + 2);


 if (cmd == SCH56XX_CMD_WRITE)
  outb(v, addr + 4);


 outb(reg & 0xff, addr + 6);
 outb(reg >> 8, addr + 7);


 outb(0x01, addr);


 for (i = 0; i < max_busy_polls + max_lazy_polls; i++) {
  if (i >= max_busy_polls)
   msleep(1);

  val = inb(addr + 8);

  if (val)
   outb(val, addr + 8);

  if (val & 0x01)
   break;
 }
 if (i == max_busy_polls + max_lazy_polls) {
  pr_err("Max retries exceeded reading virtual register 0x%04hx (%d)\n",
         reg, 1);
  return -EIO;
 }





 for (i = 0; i < max_busy_polls; i++) {

  val = inb(addr + 1);

  if (val == 0x01)
   break;

  if (i == 0)
   pr_warn("EC reports: 0x%02x reading virtual register 0x%04hx\n",
    (unsigned int)val, reg);
 }
 if (i == max_busy_polls) {
  pr_err("Max retries exceeded reading virtual register 0x%04hx (%d)\n",
         reg, 2);
  return -EIO;
 }
 if (cmd == SCH56XX_CMD_READ)
  return inb(addr + 4);

 return 0;
}
