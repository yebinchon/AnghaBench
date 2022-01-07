
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ I8042_CMD_AUX_ENABLE ;
 scalar_t__ I8042_CMD_MUX_PFX ;
 int I8042_NUM_MUX_PORTS ;
 int i8042_command (unsigned char*,scalar_t__) ;
 int i8042_enable_aux_port () ;

__attribute__((used)) static int i8042_enable_mux_ports(void)
{
 unsigned char param;
 int i;

 for (i = 0; i < I8042_NUM_MUX_PORTS; i++) {
  i8042_command(&param, I8042_CMD_MUX_PFX + i);
  i8042_command(&param, I8042_CMD_AUX_ENABLE);
 }

 return i8042_enable_aux_port();
}
