
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {scalar_t__ pktcnt; struct cytp_data* private; } ;
struct cytp_data {scalar_t__ pkt_size; } ;
typedef int psmouse_ret_t ;


 int PSMOUSE_FULL_PACKET ;
 int cypress_process_packet (struct psmouse*,int ) ;
 int cypress_validate_byte (struct psmouse*) ;

__attribute__((used)) static psmouse_ret_t cypress_protocol_handler(struct psmouse *psmouse)
{
 struct cytp_data *cytp = psmouse->private;

 if (psmouse->pktcnt >= cytp->pkt_size) {
  cypress_process_packet(psmouse, 0);
  return PSMOUSE_FULL_PACKET;
 }

 return cypress_validate_byte(psmouse);
}
