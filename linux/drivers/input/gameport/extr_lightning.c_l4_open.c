
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l4 {scalar_t__ port; } ;
struct gameport {struct l4* port_data; } ;


 int GAMEPORT_MODE_COOKED ;
 int L4_PORT ;
 int L4_SELECT_ANALOG ;
 int outb (int ,int ) ;

__attribute__((used)) static int l4_open(struct gameport *gameport, int mode)
{
 struct l4 *l4 = gameport->port_data;

        if (l4->port != 0 && mode != GAMEPORT_MODE_COOKED)
  return -1;
 outb(L4_SELECT_ANALOG, L4_PORT);
 return 0;
}
