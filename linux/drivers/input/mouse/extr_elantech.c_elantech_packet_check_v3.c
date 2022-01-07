
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct psmouse {unsigned char* packet; struct elantech_data* private; } ;
struct TYPE_2__ {scalar_t__ crc_enabled; } ;
struct elantech_data {TYPE_1__ info; } ;
typedef int debounce_packet ;


 int PACKET_DEBOUNCE ;
 int PACKET_TRACKPOINT ;
 int PACKET_UNKNOWN ;
 int PACKET_V3_HEAD ;
 int PACKET_V3_TAIL ;
 int memcmp (unsigned char*,int const*,int) ;

__attribute__((used)) static int elantech_packet_check_v3(struct psmouse *psmouse)
{
 struct elantech_data *etd = psmouse->private;
 static const u8 debounce_packet[] = {
  0xc4, 0xff, 0xff, 0x02, 0xff, 0xff
 };
 unsigned char *packet = psmouse->packet;





 if (!memcmp(packet, debounce_packet, sizeof(debounce_packet)))
  return PACKET_DEBOUNCE;





 if (etd->info.crc_enabled) {
  if ((packet[3] & 0x09) == 0x08)
   return PACKET_V3_HEAD;

  if ((packet[3] & 0x09) == 0x09)
   return PACKET_V3_TAIL;
 } else {
  if ((packet[0] & 0x0c) == 0x04 && (packet[3] & 0xcf) == 0x02)
   return PACKET_V3_HEAD;

  if ((packet[0] & 0x0c) == 0x0c && (packet[3] & 0xce) == 0x0c)
   return PACKET_V3_TAIL;
  if ((packet[3] & 0x0f) == 0x06)
   return PACKET_TRACKPOINT;
 }

 return PACKET_UNKNOWN;
}
