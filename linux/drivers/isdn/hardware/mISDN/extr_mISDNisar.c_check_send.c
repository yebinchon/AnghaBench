
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct isar_hw {int name; } ;
struct TYPE_4__ {scalar_t__ tx_idx; TYPE_1__* tx_skb; int Flags; } ;
struct isar_ch {TYPE_2__ bch; } ;
struct TYPE_3__ {scalar_t__ len; } ;


 int BSTAT_RDM1 ;
 int BSTAT_RDM2 ;
 int FLG_ACTIVE ;
 int isar_fill_fifo (struct isar_ch*) ;
 int pr_debug (char*,int ,int) ;
 struct isar_ch* sel_bch_isar (struct isar_hw*,int) ;
 int send_next (struct isar_ch*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
check_send(struct isar_hw *isar, u8 rdm)
{
 struct isar_ch *ch;

 pr_debug("%s: rdm %x\n", isar->name, rdm);
 if (rdm & BSTAT_RDM1) {
  ch = sel_bch_isar(isar, 1);
  if (ch && test_bit(FLG_ACTIVE, &ch->bch.Flags)) {
   if (ch->bch.tx_skb && (ch->bch.tx_skb->len >
            ch->bch.tx_idx))
    isar_fill_fifo(ch);
   else
    send_next(ch);
  }
 }
 if (rdm & BSTAT_RDM2) {
  ch = sel_bch_isar(isar, 2);
  if (ch && test_bit(FLG_ACTIVE, &ch->bch.Flags)) {
   if (ch->bch.tx_skb && (ch->bch.tx_skb->len >
            ch->bch.tx_idx))
    isar_fill_fifo(ch);
   else
    send_next(ch);
  }
 }
}
