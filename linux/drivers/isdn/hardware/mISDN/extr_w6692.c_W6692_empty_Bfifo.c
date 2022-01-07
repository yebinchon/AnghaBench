
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct w6692_hw {char* name; int log; } ;
struct TYPE_2__ {scalar_t__ state; int dropcnt; int nr; scalar_t__ rx_skb; int Flags; struct w6692_hw* hw; } ;
struct w6692_ch {TYPE_1__ bch; scalar_t__ addr; } ;


 int DEBUG_HW_DFIFO ;
 int DUMP_PREFIX_OFFSET ;
 int FLG_RX_OFF ;
 scalar_t__ ISDN_P_NONE ;
 int W_B_CMDR ;
 int W_B_CMDR_RACK ;
 int W_B_CMDR_RACT ;
 scalar_t__ W_B_RFIFO ;
 int WriteW6692B (struct w6692_ch*,int ,int) ;
 int bchannel_get_rxbuf (TYPE_1__*,int) ;
 int debug ;
 int insb (scalar_t__,int *,int) ;
 int pr_debug (char*,char*,...) ;
 int pr_warning (char*,char*,int,int) ;
 int print_hex_dump_bytes (int ,int ,int *,int) ;
 int * skb_put (scalar_t__,int) ;
 int skb_trim (scalar_t__,int ) ;
 int snprintf (int ,int,char*,int,char*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
W6692_empty_Bfifo(struct w6692_ch *wch, int count)
{
 struct w6692_hw *card = wch->bch.hw;
 u8 *ptr;
 int maxlen;

 pr_debug("%s: empty_Bfifo %d\n", card->name, count);
 if (unlikely(wch->bch.state == ISDN_P_NONE)) {
  pr_debug("%s: empty_Bfifo ISDN_P_NONE\n", card->name);
  WriteW6692B(wch, W_B_CMDR, W_B_CMDR_RACK | W_B_CMDR_RACT);
  if (wch->bch.rx_skb)
   skb_trim(wch->bch.rx_skb, 0);
  return;
 }
 if (test_bit(FLG_RX_OFF, &wch->bch.Flags)) {
  wch->bch.dropcnt += count;
  WriteW6692B(wch, W_B_CMDR, W_B_CMDR_RACK | W_B_CMDR_RACT);
  return;
 }
 maxlen = bchannel_get_rxbuf(&wch->bch, count);
 if (maxlen < 0) {
  WriteW6692B(wch, W_B_CMDR, W_B_CMDR_RACK | W_B_CMDR_RACT);
  if (wch->bch.rx_skb)
   skb_trim(wch->bch.rx_skb, 0);
  pr_warning("%s.B%d: No bufferspace for %d bytes\n",
      card->name, wch->bch.nr, count);
  return;
 }
 ptr = skb_put(wch->bch.rx_skb, count);
 insb(wch->addr + W_B_RFIFO, ptr, count);
 WriteW6692B(wch, W_B_CMDR, W_B_CMDR_RACK | W_B_CMDR_RACT);
 if (debug & DEBUG_HW_DFIFO) {
  snprintf(card->log, 63, "B%1d-recv %s %d ",
    wch->bch.nr, card->name, count);
  print_hex_dump_bytes(card->log, DUMP_PREFIX_OFFSET, ptr, count);
 }
}
