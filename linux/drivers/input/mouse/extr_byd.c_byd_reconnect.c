
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 int byd_detect (struct psmouse*,int ) ;
 int byd_reset_touchpad (struct psmouse*) ;
 int psmouse_dbg (struct psmouse*,char*,...) ;
 int psmouse_err (struct psmouse*,char*) ;
 int psmouse_reset (struct psmouse*) ;
 int ssleep (int) ;

__attribute__((used)) static int byd_reconnect(struct psmouse *psmouse)
{
 int retry = 0, error = 0;

 psmouse_dbg(psmouse, "Reconnect\n");
 do {
  psmouse_reset(psmouse);
  if (retry)
   ssleep(1);
  error = byd_detect(psmouse, 0);
 } while (error && ++retry < 3);

 if (error)
  return error;

 psmouse_dbg(psmouse, "Reconnected after %d attempts\n", retry);

 error = byd_reset_touchpad(psmouse);
 if (error) {
  psmouse_err(psmouse, "Unable to initialize device\n");
  return error;
 }

 return 0;
}
