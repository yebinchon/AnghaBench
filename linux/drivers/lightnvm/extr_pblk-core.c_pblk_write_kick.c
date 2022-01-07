
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pblk {int wtimer; int writer_ts; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int wake_up_process (int ) ;

void pblk_write_kick(struct pblk *pblk)
{
 wake_up_process(pblk->writer_ts);
 mod_timer(&pblk->wtimer, jiffies + msecs_to_jiffies(1000));
}
