
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct gameport {int dummy; } ;
struct analog_port {int speed; unsigned int loop; struct gameport* gameport; } ;


 int analog_faketime ;
 void* delta (int ,int ) ;
 int gameport_read (struct gameport*) ;
 int get_time () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mdelay (int) ;
 int udelay (unsigned int) ;
 scalar_t__ use_ktime ;

__attribute__((used)) static void analog_calibrate_timer(struct analog_port *port)
{
 struct gameport *gameport = port->gameport;
 unsigned int i, t, tx;
 u64 t1, t2, t3;
 unsigned long flags;

 if (use_ktime) {
  port->speed = 1000000;
 } else {
  local_irq_save(flags);
  t1 = get_time();



  mdelay(1);
  t2 = get_time();
  t3 = get_time();
  local_irq_restore(flags);

  port->speed = delta(t1, t2) - delta(t2, t3);
 }

 tx = ~0;

 for (i = 0; i < 50; i++) {
  local_irq_save(flags);
  t1 = get_time();
  for (t = 0; t < 50; t++) {
   gameport_read(gameport);
   t2 = get_time();
  }
  t3 = get_time();
  local_irq_restore(flags);
  udelay(i);
  t = delta(t1, t2) - delta(t2, t3);
  if (t < tx) tx = t;
 }

        port->loop = tx / 50;
}
