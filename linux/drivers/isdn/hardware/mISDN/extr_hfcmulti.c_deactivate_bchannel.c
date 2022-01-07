
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct hfc_multi {int lock; TYPE_1__* chan; } ;
struct bchannel {size_t slot; struct hfc_multi* hw; } ;
struct TYPE_2__ {int conf; scalar_t__ rx_off; scalar_t__ coeff_count; } ;


 int ISDN_P_NONE ;
 int mISDN_clear_bchannel (struct bchannel*) ;
 int mode_hfcmulti (struct hfc_multi*,size_t,int ,int,int ,int,int ) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void
deactivate_bchannel(struct bchannel *bch)
{
 struct hfc_multi *hc = bch->hw;
 u_long flags;

 spin_lock_irqsave(&hc->lock, flags);
 mISDN_clear_bchannel(bch);
 hc->chan[bch->slot].coeff_count = 0;
 hc->chan[bch->slot].rx_off = 0;
 hc->chan[bch->slot].conf = -1;
 mode_hfcmulti(hc, bch->slot, ISDN_P_NONE, -1, 0, -1, 0);
 spin_unlock_irqrestore(&hc->lock, flags);
}
