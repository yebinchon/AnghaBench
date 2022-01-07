
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int dummy; } ;


 int GF2K_TIMEOUT ;
 int gameport_read (struct gameport*) ;
 int gameport_time (struct gameport*,int) ;
 int gameport_trigger (struct gameport*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int udelay (short) ;

__attribute__((used)) static void gf2k_trigger_seq(struct gameport *gameport, short *seq)
{

 unsigned long flags;
 int i, t;

        local_irq_save(flags);

 i = 0;
        do {
  gameport_trigger(gameport);
  t = gameport_time(gameport, GF2K_TIMEOUT * 1000);
  while ((gameport_read(gameport) & 1) && t) t--;
                udelay(seq[i]);
        } while (seq[++i]);

 gameport_trigger(gameport);

 local_irq_restore(flags);
}
