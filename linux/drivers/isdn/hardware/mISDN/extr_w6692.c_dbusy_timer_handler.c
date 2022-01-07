
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct w6692_hw {int lock; int name; } ;
struct timer_list {int dummy; } ;
struct dchannel {scalar_t__ tx_idx; int Flags; struct w6692_hw* hw; } ;


 int FLG_BUSY_TIMER ;
 int FLG_L1_BUSY ;
 int ReadW6692 (struct w6692_hw*,int ) ;
 int W_D_CMDR ;
 int W_D_CMDR_XRST ;
 int W_D_RBCH ;
 int W_D_STAR ;
 int W_D_STAR_XBZ ;
 int WriteW6692 (struct w6692_hw*,int ,int ) ;
 struct dchannel* dch ;
 struct dchannel* from_timer (int ,struct timer_list*,int ) ;
 int pr_debug (char*,int ,int,int) ;
 int pr_info (char*,int ) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int timer ;

__attribute__((used)) static void
dbusy_timer_handler(struct timer_list *t)
{
 struct dchannel *dch = from_timer(dch, t, timer);
 struct w6692_hw *card = dch->hw;
 int rbch, star;
 u_long flags;

 if (test_bit(FLG_BUSY_TIMER, &dch->Flags)) {
  spin_lock_irqsave(&card->lock, flags);
  rbch = ReadW6692(card, W_D_RBCH);
  star = ReadW6692(card, W_D_STAR);
  pr_debug("%s: D-Channel Busy RBCH %02x STAR %02x\n",
    card->name, rbch, star);
  if (star & W_D_STAR_XBZ)
   test_and_set_bit(FLG_L1_BUSY, &dch->Flags);
  else {

   test_and_clear_bit(FLG_BUSY_TIMER, &dch->Flags);
   if (dch->tx_idx)
    dch->tx_idx = 0;
   else
    pr_info("%s: W6692 D-Channel Busy no tx_idx\n",
     card->name);

   WriteW6692(card, W_D_CMDR, W_D_CMDR_XRST);
  }
  spin_unlock_irqrestore(&card->lock, flags);
 }
}
