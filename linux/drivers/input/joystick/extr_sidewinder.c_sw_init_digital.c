
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int dummy; } ;


 int SW_TIMEOUT ;
 int gameport_read (struct gameport*) ;
 int gameport_time (struct gameport*,int) ;
 int gameport_trigger (struct gameport*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int udelay (int const) ;

__attribute__((used)) static void sw_init_digital(struct gameport *gameport)
{
 static const int seq[] = { 140, 140+725, 140+300, 0 };
 unsigned long flags;
 int i, t;

        local_irq_save(flags);

 i = 0;
        do {
                gameport_trigger(gameport);
  t = gameport_time(gameport, SW_TIMEOUT * 1000);
  while ((gameport_read(gameport) & 1) && t) t--;
                udelay(seq[i]);
        } while (seq[++i]);

 gameport_trigger(gameport);

 local_irq_restore(flags);
}
