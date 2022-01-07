
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l4 {int port; } ;
struct gameport {struct l4* port_data; } ;


 int L4_BUSY ;
 int L4_PORT ;
 int L4_SELECT_ANALOG ;
 int L4_SELECT_DIGITAL ;
 int inb (int ) ;
 scalar_t__ l4_wait_ready () ;
 int outb (int,int ) ;

__attribute__((used)) static int l4_cooked_read(struct gameport *gameport, int *axes, int *buttons)
{
 struct l4 *l4 = gameport->port_data;
 unsigned char status;
 int i, result = -1;

 outb(L4_SELECT_ANALOG, L4_PORT);
 outb(L4_SELECT_DIGITAL + (l4->port >> 2), L4_PORT);

 if (inb(L4_PORT) & L4_BUSY) goto fail;
 outb(l4->port & 3, L4_PORT);

 if (l4_wait_ready()) goto fail;
 status = inb(L4_PORT);

 for (i = 0; i < 4; i++)
  if (status & (1 << i)) {
   if (l4_wait_ready()) goto fail;
   axes[i] = inb(L4_PORT);
   if (axes[i] > 252) axes[i] = -1;
  }

 if (status & 0x10) {
  if (l4_wait_ready()) goto fail;
  *buttons = inb(L4_PORT) & 0x0f;
 }

 result = 0;

fail: outb(L4_SELECT_ANALOG, L4_PORT);
 return result;
}
