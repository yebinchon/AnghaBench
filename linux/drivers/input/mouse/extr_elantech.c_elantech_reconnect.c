
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 scalar_t__ elantech_detect (struct psmouse*,int ) ;
 scalar_t__ elantech_set_absolute_mode (struct psmouse*) ;
 int psmouse_err (struct psmouse*,char*) ;
 int psmouse_reset (struct psmouse*) ;

__attribute__((used)) static int elantech_reconnect(struct psmouse *psmouse)
{
 psmouse_reset(psmouse);

 if (elantech_detect(psmouse, 0))
  return -1;

 if (elantech_set_absolute_mode(psmouse)) {
  psmouse_err(psmouse,
       "failed to put touchpad back into absolute mode.\n");
  return -1;
 }

 return 0;
}
