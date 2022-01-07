
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct psmouse {int dummy; } ;


 scalar_t__ alps_command_mode_send_nibble (struct psmouse*,int) ;

__attribute__((used)) static int alps_monitor_mode_send_word(struct psmouse *psmouse, u16 word)
{
 int i, nibble;





 for (i = 0; i <= 8; i += 4) {
  nibble = (word >> i) & 0xf;
  if (alps_command_mode_send_nibble(psmouse, nibble))
   return -1;
 }

 return 0;
}
