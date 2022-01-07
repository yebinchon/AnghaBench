
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ps2dev {int dummy; } ;


 int EINVAL ;
 int MAKE_PS2_CMD (int,int ,int ) ;
 int TP_COMMAND ;
 int TP_TOGGLE ;
 int ps2_command (struct ps2dev*,int*,int ) ;

__attribute__((used)) static int trackpoint_toggle_bit(struct ps2dev *ps2dev, u8 loc, u8 mask)
{
 u8 param[3] = { TP_TOGGLE, loc, mask };


 if (loc < 0x20 || loc >= 0x2F)
  return -EINVAL;

 return ps2_command(ps2dev, param, MAKE_PS2_CMD(3, 0, TP_COMMAND));
}
