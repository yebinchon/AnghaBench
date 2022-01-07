
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct q40kbd* port_data; } ;
struct q40kbd {int dummy; } ;


 int q40kbd_flush (struct q40kbd*) ;
 int q40kbd_stop () ;

__attribute__((used)) static void q40kbd_close(struct serio *port)
{
 struct q40kbd *q40kbd = port->port_data;

 q40kbd_stop();
 q40kbd_flush(q40kbd);
}
