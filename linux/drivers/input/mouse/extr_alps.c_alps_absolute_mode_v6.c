
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct psmouse {int dummy; } ;


 scalar_t__ alps_monitor_mode (struct psmouse*,int) ;
 int alps_monitor_mode_write_reg (struct psmouse*,int,int) ;

__attribute__((used)) static int alps_absolute_mode_v6(struct psmouse *psmouse)
{
 u16 reg_val = 0x181;
 int ret = -1;


 if (alps_monitor_mode(psmouse, 1))
  return -1;

 ret = alps_monitor_mode_write_reg(psmouse, 0x000, reg_val);

 if (alps_monitor_mode(psmouse, 0))
  ret = -1;

 return ret;
}
