
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {scalar_t__ model; struct ps2dev ps2dev; } ;


 scalar_t__ HGPK_MODEL_D ;
 int PSMOUSE_CMD_DISABLE ;
 int PSMOUSE_IGNORE ;
 int PSMOUSE_INITIALIZING ;
 int hgpk_reset_device (struct psmouse*,int) ;
 int msleep (int) ;
 scalar_t__ ps2_command (struct ps2dev*,int *,int) ;
 int ps2_sendbyte (struct ps2dev*,int,int) ;
 int psmouse_activate (struct psmouse*) ;
 int psmouse_dbg (struct psmouse*,char*) ;
 int psmouse_err (struct psmouse*,char*) ;
 int psmouse_set_state (struct psmouse*,int ) ;

__attribute__((used)) static int hgpk_toggle_powersave(struct psmouse *psmouse, int enable)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 int timeo;
 int err;


 if (psmouse->model < HGPK_MODEL_D)
  return 0;

 if (enable) {
  psmouse_set_state(psmouse, PSMOUSE_INITIALIZING);
  for (timeo = 20; timeo > 0; timeo--) {
   if (!ps2_sendbyte(ps2dev, PSMOUSE_CMD_DISABLE, 20))
    break;
   msleep(25);
  }

  err = hgpk_reset_device(psmouse, 0);
  if (err) {
   psmouse_err(psmouse, "Failed to reset device!\n");
   return err;
  }


  psmouse_activate(psmouse);
  psmouse_dbg(psmouse, "Touchpad powered up.\n");
 } else {
  psmouse_dbg(psmouse, "Powering off touchpad.\n");

  if (ps2_command(ps2dev, ((void*)0), 0xec) ||
      ps2_command(ps2dev, ((void*)0), 0xec) ||
      ps2_command(ps2dev, ((void*)0), 0xea)) {
   return -1;
  }

  psmouse_set_state(psmouse, PSMOUSE_IGNORE);


  ps2_sendbyte(ps2dev, 0xec, 20);
 }

 return 0;
}
