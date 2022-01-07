
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned char* packet; int pktcnt; } ;
typedef int psmouse_ret_t ;


 int PSMOUSE_BAD_DATA ;
 int PSMOUSE_GOOD_DATA ;
 int vmmouse_report_events (struct psmouse*) ;

__attribute__((used)) static psmouse_ret_t vmmouse_process_byte(struct psmouse *psmouse)
{
 unsigned char *packet = psmouse->packet;

 switch (psmouse->pktcnt) {
 case 1:
  return (packet[0] & 0x8) == 0x8 ?
   PSMOUSE_GOOD_DATA : PSMOUSE_BAD_DATA;

 case 2:
  return PSMOUSE_GOOD_DATA;

 default:
  return vmmouse_report_events(psmouse);
 }
}
