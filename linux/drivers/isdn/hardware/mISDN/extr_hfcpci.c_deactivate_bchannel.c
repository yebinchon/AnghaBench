
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct hfc_pci {int lock; } ;
struct bchannel {int nr; struct hfc_pci* hw; } ;


 int ISDN_P_NONE ;
 int mISDN_clear_bchannel (struct bchannel*) ;
 int mode_hfcpci (struct bchannel*,int ,int ) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void
deactivate_bchannel(struct bchannel *bch)
{
 struct hfc_pci *hc = bch->hw;
 u_long flags;

 spin_lock_irqsave(&hc->lock, flags);
 mISDN_clear_bchannel(bch);
 mode_hfcpci(bch, bch->nr, ISDN_P_NONE);
 spin_unlock_irqrestore(&hc->lock, flags);
}
