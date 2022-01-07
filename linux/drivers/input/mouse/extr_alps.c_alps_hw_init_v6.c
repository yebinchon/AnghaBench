
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 scalar_t__ alps_absolute_mode_v6 (struct psmouse*) ;
 scalar_t__ alps_passthrough_mode_v2 (struct psmouse*,int) ;
 int alps_trackstick_enter_extended_mode_v3_v6 (struct psmouse*) ;
 int psmouse_err (struct psmouse*,char*) ;

__attribute__((used)) static int alps_hw_init_v6(struct psmouse *psmouse)
{
 int ret;


 if (alps_passthrough_mode_v2(psmouse, 1))
  return -1;

 ret = alps_trackstick_enter_extended_mode_v3_v6(psmouse);

 if (alps_passthrough_mode_v2(psmouse, 0))
  return -1;

 if (ret)
  return ret;

 if (alps_absolute_mode_v6(psmouse)) {
  psmouse_err(psmouse, "Failed to enable absolute mode\n");
  return -1;
 }

 return 0;
}
