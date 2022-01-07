
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse {unsigned char* packet; struct elantech_data* private; } ;
struct TYPE_2__ {scalar_t__ reports_pressure; } ;
struct elantech_data {TYPE_1__ info; } ;



__attribute__((used)) static int elantech_packet_check_v2(struct psmouse *psmouse)
{
 struct elantech_data *etd = psmouse->private;
 unsigned char *packet = psmouse->packet;
 if (etd->info.reports_pressure)
  return (packet[0] & 0x0c) == 0x04 &&
         (packet[3] & 0x0f) == 0x02;

 if ((packet[0] & 0xc0) == 0x80)
  return (packet[0] & 0x0c) == 0x0c &&
         (packet[3] & 0x0e) == 0x08;

 return (packet[0] & 0x3c) == 0x3c &&
        (packet[1] & 0xf0) == 0x00 &&
        (packet[3] & 0x3e) == 0x38 &&
        (packet[4] & 0xf0) == 0x00;
}
