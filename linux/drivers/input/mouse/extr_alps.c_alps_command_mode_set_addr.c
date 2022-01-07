
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct alps_data* private; struct ps2dev ps2dev; } ;
struct alps_data {int addr_command; } ;


 scalar_t__ alps_command_mode_send_nibble (struct psmouse*,int) ;
 scalar_t__ ps2_command (struct ps2dev*,int *,int ) ;

__attribute__((used)) static int alps_command_mode_set_addr(struct psmouse *psmouse, int addr)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 struct alps_data *priv = psmouse->private;
 int i, nibble;

 if (ps2_command(ps2dev, ((void*)0), priv->addr_command))
  return -1;

 for (i = 12; i >= 0; i -= 4) {
  nibble = (addr >> i) & 0xf;
  if (alps_command_mode_send_nibble(psmouse, nibble))
   return -1;
 }

 return 0;
}
