
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 int psmouse_err (struct psmouse*,char*,int) ;
 int psmouse_reset (struct psmouse*) ;
 int vmmouse_disable (struct psmouse*) ;
 int vmmouse_enable (struct psmouse*) ;

__attribute__((used)) static int vmmouse_reconnect(struct psmouse *psmouse)
{
 int error;

 psmouse_reset(psmouse);
 vmmouse_disable(psmouse);
 error = vmmouse_enable(psmouse);
 if (error) {
  psmouse_err(psmouse,
       "Unable to re-enable mouse when reconnecting, err: %d\n",
       error);
  return error;
 }

 return 0;
}
