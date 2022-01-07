
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bchannel {int workq; } ;


 int cancel_work_sync (int *) ;
 int mISDN_clear_bchannel (struct bchannel*) ;

void
mISDN_freebchannel(struct bchannel *ch)
{
 cancel_work_sync(&ch->workq);
 mISDN_clear_bchannel(ch);
}
