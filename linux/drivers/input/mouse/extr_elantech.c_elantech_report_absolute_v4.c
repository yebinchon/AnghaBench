
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;






 int process_packet_head_v4 (struct psmouse*) ;
 int process_packet_motion_v4 (struct psmouse*) ;
 int process_packet_status_v4 (struct psmouse*) ;

__attribute__((used)) static void elantech_report_absolute_v4(struct psmouse *psmouse,
     int packet_type)
{
 switch (packet_type) {
 case 128:
  process_packet_status_v4(psmouse);
  break;

 case 130:
  process_packet_head_v4(psmouse);
  break;

 case 129:
  process_packet_motion_v4(psmouse);
  break;

 case 131:
 default:

  break;
 }
}
