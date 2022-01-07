
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int pktcnt; int* packet; } ;



__attribute__((used)) static bool alps_is_valid_package_ss4_v2(struct psmouse *psmouse)
{
 if (psmouse->pktcnt == 4 && ((psmouse->packet[3] & 0x08) != 0x08))
  return 0;
 if (psmouse->pktcnt == 6 && ((psmouse->packet[5] & 0x10) != 0x0))
  return 0;
 return 1;
}
