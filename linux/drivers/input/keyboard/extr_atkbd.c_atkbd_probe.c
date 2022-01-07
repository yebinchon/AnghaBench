
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps2dev {TYPE_1__* serio; } ;
struct atkbd {int id; scalar_t__ translated; struct ps2dev ps2dev; } ;
struct TYPE_2__ {int dev; int phys; } ;


 int ATKBD_CMD_GETID ;
 int ATKBD_CMD_RESET_BAT ;
 int ATKBD_CMD_SETLEDS ;
 int atkbd_deactivate (struct atkbd*) ;
 scalar_t__ atkbd_reset ;
 int atkbd_skip_deactivate ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,int ) ;
 scalar_t__ ps2_command (struct ps2dev*,unsigned char*,int ) ;
 int ps2_is_keyboard_id (unsigned char) ;

__attribute__((used)) static int atkbd_probe(struct atkbd *atkbd)
{
 struct ps2dev *ps2dev = &atkbd->ps2dev;
 unsigned char param[2];







 if (atkbd_reset)
  if (ps2_command(ps2dev, ((void*)0), ATKBD_CMD_RESET_BAT))
   dev_warn(&ps2dev->serio->dev,
     "keyboard reset failed on %s\n",
     ps2dev->serio->phys);
 param[0] = param[1] = 0xa5;
 if (ps2_command(ps2dev, param, ATKBD_CMD_GETID)) {






  param[0] = 0;
  if (ps2_command(ps2dev, param, ATKBD_CMD_SETLEDS))
   return -1;
  atkbd->id = 0xabba;
  return 0;
 }

 if (!ps2_is_keyboard_id(param[0]))
  return -1;

 atkbd->id = (param[0] << 8) | param[1];

 if (atkbd->id == 0xaca1 && atkbd->translated) {
  dev_err(&ps2dev->serio->dev,
   "NCD terminal keyboards are only supported on non-translating controllers. "
   "Use i8042.direct=1 to disable translation.\n");
  return -1;
 }





 if (!atkbd_skip_deactivate)
  atkbd_deactivate(atkbd);

 return 0;
}
