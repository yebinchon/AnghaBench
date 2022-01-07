
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int I8042_CMD_CTL_WCTR ;
 int I8042_CTR_KBDDIS ;
 int I8042_CTR_KBDINT ;
 scalar_t__ i8042_command (int *,int ) ;
 int i8042_ctr ;
 int pr_err (char*) ;

__attribute__((used)) static int i8042_enable_kbd_port(void)
{
 i8042_ctr &= ~I8042_CTR_KBDDIS;
 i8042_ctr |= I8042_CTR_KBDINT;

 if (i8042_command(&i8042_ctr, I8042_CMD_CTL_WCTR)) {
  i8042_ctr &= ~I8042_CTR_KBDINT;
  i8042_ctr |= I8042_CTR_KBDDIS;
  pr_err("Failed to enable KBD port\n");
  return -EIO;
 }

 return 0;
}
