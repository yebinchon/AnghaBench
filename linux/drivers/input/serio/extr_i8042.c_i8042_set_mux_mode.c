
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I8042_CMD_AUX_LOOP ;
 scalar_t__ i8042_command (unsigned char*,int ) ;
 int i8042_flush () ;

__attribute__((used)) static int i8042_set_mux_mode(bool multiplex, unsigned char *mux_version)
{

 unsigned char param, val;




 i8042_flush();






 param = val = 0xf0;
 if (i8042_command(&param, I8042_CMD_AUX_LOOP) || param != val)
  return -1;
 param = val = multiplex ? 0x56 : 0xf6;
 if (i8042_command(&param, I8042_CMD_AUX_LOOP) || param != val)
  return -1;
 param = val = multiplex ? 0xa4 : 0xa5;
 if (i8042_command(&param, I8042_CMD_AUX_LOOP) || param == val)
  return -1;





 if (param == 0xac)
  return -1;

 if (mux_version)
  *mux_version = param;

 return 0;
}
