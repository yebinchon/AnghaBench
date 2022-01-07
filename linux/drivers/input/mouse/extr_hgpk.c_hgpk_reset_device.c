
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int hgpk_reset_hack_state (struct psmouse*) ;
 int hgpk_select_mode (struct psmouse*) ;
 int msleep (int) ;
 scalar_t__ ps2_command (struct ps2dev*,int *,int) ;
 int psmouse_err (struct psmouse*,char*) ;
 int psmouse_reset (struct psmouse*) ;

__attribute__((used)) static int hgpk_reset_device(struct psmouse *psmouse, bool recalibrate)
{
 int err;

 psmouse_reset(psmouse);

 if (recalibrate) {
  struct ps2dev *ps2dev = &psmouse->ps2dev;


  if (ps2_command(ps2dev, ((void*)0), 0xf5) ||
      ps2_command(ps2dev, ((void*)0), 0xf5) ||
      ps2_command(ps2dev, ((void*)0), 0xe6) ||
      ps2_command(ps2dev, ((void*)0), 0xf5)) {
   return -1;
  }


  msleep(150);
 }

 err = hgpk_select_mode(psmouse);
 if (err) {
  psmouse_err(psmouse, "failed to select mode\n");
  return err;
 }

 hgpk_reset_hack_state(psmouse);

 return 0;
}
