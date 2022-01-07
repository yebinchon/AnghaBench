
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* handler ) (unsigned char*,int,int) ;int busy; } ;


 scalar_t__ adb_got_sleep ;
 TYPE_1__* adb_handler ;
 int adb_handler_lock ;
 int pr_cont (char*,int) ;
 int pr_info (char*) ;
 void stub1 (unsigned char*,int,int) ;
 int wmb () ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void
adb_input(unsigned char *buf, int nb, int autopoll)
{
 int i, id;
 static int dump_adb_input;
 unsigned long flags;

 void (*handler)(unsigned char *, int, int);




 if (adb_got_sleep)
  return;

 id = buf[0] >> 4;
 if (dump_adb_input) {
  pr_info("adb packet: ");
  for (i = 0; i < nb; ++i)
   pr_cont(" %x", buf[i]);
  pr_cont(", id = %d\n", id);
 }
 write_lock_irqsave(&adb_handler_lock, flags);
 handler = adb_handler[id].handler;
 if (handler != ((void*)0))
  adb_handler[id].busy = 1;
 write_unlock_irqrestore(&adb_handler_lock, flags);
 if (handler != ((void*)0)) {
  (*handler)(buf, nb, autopoll);
  wmb();
  adb_handler[id].busy = 0;
 }

}
