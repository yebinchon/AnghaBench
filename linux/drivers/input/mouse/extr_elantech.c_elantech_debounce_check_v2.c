
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct psmouse {unsigned char* packet; } ;
typedef int debounce_packet ;


 int memcmp (unsigned char*,int const*,int) ;

__attribute__((used)) static int elantech_debounce_check_v2(struct psmouse *psmouse)
{




 static const u8 debounce_packet[] = {
  0x84, 0xff, 0xff, 0x02, 0xff, 0xff
 };
        unsigned char *packet = psmouse->packet;

        return !memcmp(packet, debounce_packet, sizeof(debounce_packet));
}
