
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int pktsize; int packet; int ps2dev; } ;


 int PSMOUSE_CMD_POLL ;
 int ps2_command (int *,int ,int) ;

__attribute__((used)) static int psmouse_poll(struct psmouse *psmouse)
{
 return ps2_command(&psmouse->ps2dev, psmouse->packet,
      PSMOUSE_CMD_POLL | (psmouse->pktsize << 8));
}
