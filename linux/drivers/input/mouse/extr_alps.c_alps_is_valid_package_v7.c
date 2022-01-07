
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int pktcnt; int* packet; } ;



__attribute__((used)) static bool alps_is_valid_package_v7(struct psmouse *psmouse)
{
 switch (psmouse->pktcnt) {
 case 3:
  return (psmouse->packet[2] & 0x40) == 0x40;
 case 4:
  return (psmouse->packet[3] & 0x48) == 0x48;
 case 6:
  return (psmouse->packet[5] & 0x40) == 0x00;
 }
 return 1;
}
