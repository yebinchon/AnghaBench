
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psmouse {scalar_t__ pktcnt; scalar_t__ pktsize; struct elantech_data* private; } ;
struct TYPE_2__ {int debug; int hw_version; int paritycheck; } ;
struct elantech_data {TYPE_1__ info; } ;
typedef int psmouse_ret_t ;





 int PSMOUSE_BAD_DATA ;
 int PSMOUSE_FULL_PACKET ;
 int PSMOUSE_GOOD_DATA ;
 int elantech_debounce_check_v2 (struct psmouse*) ;
 int elantech_packet_check_v1 (struct psmouse*) ;
 int elantech_packet_check_v2 (struct psmouse*) ;
 int elantech_packet_check_v3 (struct psmouse*) ;
 int elantech_packet_check_v4 (struct psmouse*) ;
 int elantech_packet_dump (struct psmouse*) ;
 int elantech_report_absolute_v1 (struct psmouse*) ;
 int elantech_report_absolute_v2 (struct psmouse*) ;
 int elantech_report_absolute_v3 (struct psmouse*,int) ;
 int elantech_report_absolute_v4 (struct psmouse*,int) ;
 int elantech_report_trackpoint (struct psmouse*,int) ;

__attribute__((used)) static psmouse_ret_t elantech_process_byte(struct psmouse *psmouse)
{
 struct elantech_data *etd = psmouse->private;
 int packet_type;

 if (psmouse->pktcnt < psmouse->pktsize)
  return PSMOUSE_GOOD_DATA;

 if (etd->info.debug > 1)
  elantech_packet_dump(psmouse);

 switch (etd->info.hw_version) {
 case 1:
  if (etd->info.paritycheck && !elantech_packet_check_v1(psmouse))
   return PSMOUSE_BAD_DATA;

  elantech_report_absolute_v1(psmouse);
  break;

 case 2:

  if (elantech_debounce_check_v2(psmouse))
   return PSMOUSE_FULL_PACKET;

  if (etd->info.paritycheck && !elantech_packet_check_v2(psmouse))
   return PSMOUSE_BAD_DATA;

  elantech_report_absolute_v2(psmouse);
  break;

 case 3:
  packet_type = elantech_packet_check_v3(psmouse);
  switch (packet_type) {
  case 128:
   return PSMOUSE_BAD_DATA;

  case 130:

   break;

  case 129:
   elantech_report_trackpoint(psmouse, packet_type);
   break;

  default:
   elantech_report_absolute_v3(psmouse, packet_type);
   break;
  }

  break;

 case 4:
  packet_type = elantech_packet_check_v4(psmouse);
  switch (packet_type) {
  case 128:
   return PSMOUSE_BAD_DATA;

  case 129:
   elantech_report_trackpoint(psmouse, packet_type);
   break;

  default:
   elantech_report_absolute_v4(psmouse, packet_type);
   break;
  }

  break;
 }

 return PSMOUSE_FULL_PACKET;
}
