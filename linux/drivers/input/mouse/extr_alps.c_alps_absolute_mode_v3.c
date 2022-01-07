
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 scalar_t__ __alps_command_mode_write_reg (struct psmouse*,int) ;
 int alps_command_mode_read_reg (struct psmouse*,int) ;

__attribute__((used)) static int alps_absolute_mode_v3(struct psmouse *psmouse)
{
 int reg_val;

 reg_val = alps_command_mode_read_reg(psmouse, 0x0004);
 if (reg_val == -1)
  return -1;

 reg_val |= 0x06;
 if (__alps_command_mode_write_reg(psmouse, reg_val))
  return -1;

 return 0;
}
