
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int I8042_CMD_CTL_WCTR ;
 int I8042_CTR_AUXDIS ;
 int I8042_CTR_AUXINT ;
 scalar_t__ i8042_command (int *,int ) ;
 int i8042_ctr ;
 int pr_err (char*) ;

__attribute__((used)) static int i8042_enable_aux_port(void)
{
 i8042_ctr &= ~I8042_CTR_AUXDIS;
 i8042_ctr |= I8042_CTR_AUXINT;

 if (i8042_command(&i8042_ctr, I8042_CMD_CTL_WCTR)) {
  i8042_ctr &= ~I8042_CTR_AUXINT;
  i8042_ctr |= I8042_CTR_AUXDIS;
  pr_err("Failed to enable AUX port\n");
  return -EIO;
 }

 return 0;
}
