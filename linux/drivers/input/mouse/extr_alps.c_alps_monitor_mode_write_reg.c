
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int PSMOUSE_CMD_DISABLE ;
 int PSMOUSE_CMD_ENABLE ;
 scalar_t__ alps_monitor_mode_send_word (struct psmouse*,int) ;
 scalar_t__ ps2_command (struct ps2dev*,int *,int ) ;

__attribute__((used)) static int alps_monitor_mode_write_reg(struct psmouse *psmouse,
           u16 addr, u16 value)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;


 if (ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_ENABLE) ||
     alps_monitor_mode_send_word(psmouse, 0x0A0) ||
     alps_monitor_mode_send_word(psmouse, addr) ||
     alps_monitor_mode_send_word(psmouse, value) ||
     ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_DISABLE))
  return -1;

 return 0;
}
