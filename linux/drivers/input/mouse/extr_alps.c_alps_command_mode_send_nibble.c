
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps2dev {int dummy; } ;
struct psmouse {struct alps_data* private; struct ps2dev ps2dev; } ;
struct alps_data {TYPE_1__* nibble_commands; } ;
struct TYPE_2__ {int command; int data; } ;


 int BUG_ON (int) ;
 scalar_t__ ps2_command (struct ps2dev*,unsigned char*,int) ;

__attribute__((used)) static int alps_command_mode_send_nibble(struct psmouse *psmouse, int nibble)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 struct alps_data *priv = psmouse->private;
 int command;
 unsigned char *param;
 unsigned char dummy[4];

 BUG_ON(nibble > 0xf);

 command = priv->nibble_commands[nibble].command;
 param = (command & 0x0f00) ?
  dummy : (unsigned char *)&priv->nibble_commands[nibble].data;

 if (ps2_command(ps2dev, param, command))
  return -1;

 return 0;
}
