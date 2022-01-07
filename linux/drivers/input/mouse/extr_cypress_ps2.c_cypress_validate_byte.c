
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int pktcnt; unsigned char* packet; struct cytp_data* private; } ;
struct cytp_data {int pkt_size; int mode; } ;
typedef int psmouse_ret_t ;


 int CYTP_BIT_ABS_NO_PRESSURE ;
 int CYTP_BIT_ABS_REL_MASK ;
 int PSMOUSE_BAD_DATA ;
 int PSMOUSE_FULL_PACKET ;
 int PSMOUSE_GOOD_DATA ;
 int cypress_get_finger_count (unsigned char) ;
 int cypress_process_packet (struct psmouse*,int) ;
 int cypress_set_packet_size (struct psmouse*,int) ;

__attribute__((used)) static psmouse_ret_t cypress_validate_byte(struct psmouse *psmouse)
{
 int contact_cnt;
 int index = psmouse->pktcnt - 1;
 unsigned char *packet = psmouse->packet;
 struct cytp_data *cytp = psmouse->private;

 if (index < 0 || index > cytp->pkt_size)
  return PSMOUSE_BAD_DATA;

 if (index == 0 && (packet[0] & 0xfc) == 0) {

  cypress_process_packet(psmouse, 1);
  return PSMOUSE_FULL_PACKET;
 }





 if (index != 0)
  return PSMOUSE_GOOD_DATA;





 if ((cytp->mode & CYTP_BIT_ABS_REL_MASK) == 0)
  return PSMOUSE_GOOD_DATA;

 if ((packet[0] & 0x08) == 0x08)
  return PSMOUSE_BAD_DATA;

 contact_cnt = cypress_get_finger_count(packet[0]);
 if (cytp->mode & CYTP_BIT_ABS_NO_PRESSURE)
  cypress_set_packet_size(psmouse, contact_cnt == 2 ? 7 : 4);
 else
  cypress_set_packet_size(psmouse, contact_cnt == 2 ? 8 : 5);

 return PSMOUSE_GOOD_DATA;
}
