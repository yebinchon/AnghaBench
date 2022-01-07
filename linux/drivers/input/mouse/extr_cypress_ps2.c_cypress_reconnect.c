
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 int CYTP_PS2_CMD_TRIES ;
 int cypress_detect (struct psmouse*,int) ;
 int cypress_reset (struct psmouse*) ;
 scalar_t__ cypress_set_absolute_mode (struct psmouse*) ;
 int psmouse_err (struct psmouse*,char*) ;

__attribute__((used)) static int cypress_reconnect(struct psmouse *psmouse)
{
 int tries = CYTP_PS2_CMD_TRIES;
 int rc;

 do {
  cypress_reset(psmouse);
  rc = cypress_detect(psmouse, 0);
 } while (rc && (--tries > 0));

 if (rc) {
  psmouse_err(psmouse, "Reconnect: unable to detect trackpad.\n");
  return -1;
 }

 if (cypress_set_absolute_mode(psmouse)) {
  psmouse_err(psmouse, "Reconnect: Unable to initialize Cypress absolute mode.\n");
  return -1;
 }

 return 0;
}
