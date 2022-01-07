
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * function; } ;
struct TYPE_3__ {scalar_t__ l1; TYPE_2__ timer; } ;
struct isac_hw {int type; TYPE_1__ dch; int * mon_tx; int * mon_rx; } ;


 int CLOSE_CHANNEL ;
 int IPAC_TYPE_ISACX ;
 int ISACX_MASK ;
 int ISAC_MASK ;
 int WriteISAC (struct isac_hw*,int ,int) ;
 int del_timer (TYPE_2__*) ;
 int kfree (int *) ;
 int l1_event (scalar_t__,int ) ;
 int mISDN_freedchannel (TYPE_1__*) ;

__attribute__((used)) static void
isac_release(struct isac_hw *isac)
{
 if (isac->type & IPAC_TYPE_ISACX)
  WriteISAC(isac, ISACX_MASK, 0xff);
 else
  WriteISAC(isac, ISAC_MASK, 0xff);
 if (isac->dch.timer.function != ((void*)0)) {
  del_timer(&isac->dch.timer);
  isac->dch.timer.function = ((void*)0);
 }
 kfree(isac->mon_rx);
 isac->mon_rx = ((void*)0);
 kfree(isac->mon_tx);
 isac->mon_tx = ((void*)0);
 if (isac->dch.l1)
  l1_event(isac->dch.l1, CLOSE_CHANNEL);
 mISDN_freedchannel(&isac->dch);
}
