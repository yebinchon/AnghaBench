
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct q40kbd* port_data; } ;
struct q40kbd {int dummy; } ;


 int KEYBOARD_UNLOCK_REG ;
 int KEY_IRQ_ENABLE_REG ;
 int master_outb (int,int ) ;
 int q40kbd_flush (struct q40kbd*) ;

__attribute__((used)) static int q40kbd_open(struct serio *port)
{
 struct q40kbd *q40kbd = port->port_data;

 q40kbd_flush(q40kbd);


 master_outb(-1, KEYBOARD_UNLOCK_REG);
 master_outb(1, KEY_IRQ_ENABLE_REG);

 return 0;
}
