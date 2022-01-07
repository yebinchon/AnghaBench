
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct timer_list {int dummy; } ;
struct TYPE_3__ {scalar_t__ tx_idx; int Flags; } ;
struct isac_hw {int hwlock; int name; TYPE_1__ dch; } ;
struct TYPE_4__ {int timer; } ;


 int FLG_BUSY_TIMER ;
 int FLG_L1_BUSY ;
 int ISAC_CMDR ;
 int ISAC_RBCH ;
 int ISAC_RBCH_XAC ;
 int ISAC_STAR ;
 int ReadISAC (struct isac_hw*,int ) ;
 int WriteISAC (struct isac_hw*,int ,int) ;
 TYPE_2__ dch ;
 struct isac_hw* from_timer (int ,struct timer_list*,int ) ;
 struct isac_hw* isac ;
 int pr_debug (char*,int ,int,int) ;
 int pr_info (char*,int ) ;
 int spin_lock_irqsave (int ,int ) ;
 int spin_unlock_irqrestore (int ,int ) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
dbusy_timer_handler(struct timer_list *t)
{
 struct isac_hw *isac = from_timer(isac, t, dch.timer);
 int rbch, star;
 u_long flags;

 if (test_bit(FLG_BUSY_TIMER, &isac->dch.Flags)) {
  spin_lock_irqsave(isac->hwlock, flags);
  rbch = ReadISAC(isac, ISAC_RBCH);
  star = ReadISAC(isac, ISAC_STAR);
  pr_debug("%s: D-Channel Busy RBCH %02x STAR %02x\n",
    isac->name, rbch, star);
  if (rbch & ISAC_RBCH_XAC)
   test_and_set_bit(FLG_L1_BUSY, &isac->dch.Flags);
  else {

   test_and_clear_bit(FLG_BUSY_TIMER, &isac->dch.Flags);
   if (isac->dch.tx_idx)
    isac->dch.tx_idx = 0;
   else
    pr_info("%s: ISAC D-Channel Busy no tx_idx\n",
     isac->name);

   WriteISAC(isac, ISAC_CMDR, 0x01);
  }
  spin_unlock_irqrestore(isac->hwlock, flags);
 }
}
