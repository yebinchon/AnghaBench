
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 int PSMOUSE_CMD_DISABLE ;
 scalar_t__ alps_rpt_cmd (struct psmouse*,int ,int ,char*) ;

__attribute__((used)) static int alps_get_status(struct psmouse *psmouse, char *param)
{

 if (alps_rpt_cmd(psmouse, 0, PSMOUSE_CMD_DISABLE, param))
  return -1;

 return 0;
}
