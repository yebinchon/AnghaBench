
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned char* packet; } ;


 int alps_process_touchpad_packet_v7 (struct psmouse*) ;
 int alps_process_trackstick_packet_v7 (struct psmouse*) ;

__attribute__((used)) static void alps_process_packet_v7(struct psmouse *psmouse)
{
 unsigned char *packet = psmouse->packet;

 if (packet[0] == 0x48 && (packet[4] & 0x47) == 0x06)
  alps_process_trackstick_packet_v7(psmouse);
 else
  alps_process_touchpad_packet_v7(psmouse);
}
