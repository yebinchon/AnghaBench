
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct psmouse {int dummy; } ;


 int ABSPOINTER_COMMAND ;
 int ABSPOINTER_STATUS ;
 int VMMOUSE_CMD (int ,int ,int,int,int,int) ;
 int VMMOUSE_CMD_DISABLE ;
 int VMMOUSE_ERROR ;
 int psmouse_warn (struct psmouse*,char*) ;

__attribute__((used)) static void vmmouse_disable(struct psmouse *psmouse)
{
 u32 status;
 u32 dummy1, dummy2, dummy3, dummy4;

 VMMOUSE_CMD(ABSPOINTER_COMMAND, VMMOUSE_CMD_DISABLE,
      dummy1, dummy2, dummy3, dummy4);

 VMMOUSE_CMD(ABSPOINTER_STATUS, 0,
      status, dummy1, dummy2, dummy3);

 if ((status & VMMOUSE_ERROR) != VMMOUSE_ERROR)
  psmouse_warn(psmouse, "failed to disable vmmouse device\n");
}
