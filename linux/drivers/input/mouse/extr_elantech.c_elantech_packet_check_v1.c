
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse {unsigned char* packet; struct elantech_data* private; } ;
struct TYPE_2__ {int fw_version; } ;
struct elantech_data {unsigned char* parity; TYPE_1__ info; } ;



__attribute__((used)) static int elantech_packet_check_v1(struct psmouse *psmouse)
{
 struct elantech_data *etd = psmouse->private;
 unsigned char *packet = psmouse->packet;
 unsigned char p1, p2, p3;


 if (etd->info.fw_version < 0x020000) {

  p1 = (packet[0] & 0x20) >> 5;
  p2 = (packet[0] & 0x10) >> 4;
 } else {

  p1 = (packet[0] & 0x10) >> 4;
  p2 = (packet[0] & 0x20) >> 5;
 }

 p3 = (packet[0] & 0x04) >> 2;

 return etd->parity[packet[1]] == p1 &&
        etd->parity[packet[2]] == p2 &&
        etd->parity[packet[3]] == p3;
}
