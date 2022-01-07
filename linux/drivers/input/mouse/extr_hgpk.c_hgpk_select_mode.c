
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {int pktsize; struct hgpk_data* private; struct ps2dev ps2dev; } ;
struct hgpk_data {int mode; } ;


 int ARRAY_SIZE (int const*) ;
 int EINVAL ;
 int EIO ;



 int PSMOUSE_CMD_DISABLE ;
 int PSMOUSE_CMD_SETSCALE11 ;
 int PSMOUSE_CMD_SETSCALE21 ;
 int ps2_command (struct ps2dev*,int *,int const) ;

__attribute__((used)) static int hgpk_select_mode(struct psmouse *psmouse)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 struct hgpk_data *priv = psmouse->private;
 int i;
 int cmd;





 const int advanced_init[] = {
  PSMOUSE_CMD_DISABLE, PSMOUSE_CMD_DISABLE,
  PSMOUSE_CMD_DISABLE, PSMOUSE_CMD_DISABLE,
  0xf2, 0xf2, 0xf2,
 };

 switch (priv->mode) {
 case 129:
  psmouse->pktsize = 3;
  break;

 case 130:
 case 128:
  psmouse->pktsize = 6;


  for (i = 0; i < ARRAY_SIZE(advanced_init); i++)
   if (ps2_command(ps2dev, ((void*)0), advanced_init[i]))
    return -EIO;


  cmd = priv->mode == 130 ?
   PSMOUSE_CMD_SETSCALE11 : PSMOUSE_CMD_SETSCALE21;

  if (ps2_command(ps2dev, ((void*)0), cmd))
   return -EIO;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
