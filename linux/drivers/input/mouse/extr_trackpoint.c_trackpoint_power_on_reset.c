
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ps2dev {int dummy; } ;


 int ENODEV ;
 int MAKE_PS2_CMD (int,int,int ) ;
 int TP_COMMAND ;
 int TP_POR ;
 int ps2_command (struct ps2dev*,int*,int ) ;

__attribute__((used)) static int trackpoint_power_on_reset(struct ps2dev *ps2dev)
{
 u8 param[2] = { TP_POR };
 int err;

 err = ps2_command(ps2dev, param, MAKE_PS2_CMD(1, 2, TP_COMMAND));
 if (err)
  return err;


 if (param[0] != 0xAA || param[1] != 0x00)
  return -ENODEV;

 return 0;
}
