
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int ps2dev; struct alps_data* private; } ;
struct alps_data {int flags; } ;


 int ALPS_PASS ;
 int PSMOUSE_CMD_SETSTREAM ;
 scalar_t__ alps_absolute_mode_v1_v2 (struct psmouse*) ;
 scalar_t__ alps_passthrough_mode_v2 (struct psmouse*,int) ;
 scalar_t__ alps_tap_mode (struct psmouse*,int) ;
 scalar_t__ ps2_command (int *,int *,int ) ;
 int psmouse_err (struct psmouse*,char*) ;
 int psmouse_warn (struct psmouse*,char*) ;

__attribute__((used)) static int alps_hw_init_v1_v2(struct psmouse *psmouse)
{
 struct alps_data *priv = psmouse->private;

 if ((priv->flags & ALPS_PASS) &&
     alps_passthrough_mode_v2(psmouse, 1)) {
  return -1;
 }

 if (alps_tap_mode(psmouse, 1)) {
  psmouse_warn(psmouse, "Failed to enable hardware tapping\n");
  return -1;
 }

 if (alps_absolute_mode_v1_v2(psmouse)) {
  psmouse_err(psmouse, "Failed to enable absolute mode\n");
  return -1;
 }

 if ((priv->flags & ALPS_PASS) &&
     alps_passthrough_mode_v2(psmouse, 0)) {
  return -1;
 }


 if (ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_SETSTREAM)) {
  psmouse_err(psmouse, "Failed to enable stream mode\n");
  return -1;
 }

 return 0;
}
