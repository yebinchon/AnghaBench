
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct hfc_multi {TYPE_1__* chan; int * created; } ;
struct dchannel {int Flags; } ;
struct bchannel {int Flags; } ;
struct TYPE_2__ {size_t port; struct bchannel* bch; struct dchannel* dch; } ;


 int FLG_ACTIVE ;
 int HFC_inb_nodebug (struct hfc_multi*,scalar_t__) ;
 int HFC_outb_nodebug (struct hfc_multi*,int ,int ) ;
 int HFC_wait_nodebug (struct hfc_multi*) ;
 int R_FIFO ;
 scalar_t__ R_IRQ_FIFO_BL0 ;
 int hfcmulti_rx (struct hfc_multi*,int) ;
 int hfcmulti_tx (struct hfc_multi*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
fifo_irq(struct hfc_multi *hc, int block)
{
 int ch, j;
 struct dchannel *dch;
 struct bchannel *bch;
 u_char r_irq_fifo_bl;

 r_irq_fifo_bl = HFC_inb_nodebug(hc, R_IRQ_FIFO_BL0 + block);
 j = 0;
 while (j < 8) {
  ch = (block << 2) + (j >> 1);
  dch = hc->chan[ch].dch;
  bch = hc->chan[ch].bch;
  if (((!dch) && (!bch)) || (!hc->created[hc->chan[ch].port])) {
   j += 2;
   continue;
  }
  if (dch && (r_irq_fifo_bl & (1 << j)) &&
      test_bit(FLG_ACTIVE, &dch->Flags)) {
   hfcmulti_tx(hc, ch);

   HFC_outb_nodebug(hc, R_FIFO, 0);
   HFC_wait_nodebug(hc);
  }
  if (bch && (r_irq_fifo_bl & (1 << j)) &&
      test_bit(FLG_ACTIVE, &bch->Flags)) {
   hfcmulti_tx(hc, ch);

   HFC_outb_nodebug(hc, R_FIFO, 0);
   HFC_wait_nodebug(hc);
  }
  j++;
  if (dch && (r_irq_fifo_bl & (1 << j)) &&
      test_bit(FLG_ACTIVE, &dch->Flags)) {
   hfcmulti_rx(hc, ch);
  }
  if (bch && (r_irq_fifo_bl & (1 << j)) &&
      test_bit(FLG_ACTIVE, &bch->Flags)) {
   hfcmulti_rx(hc, ch);
  }
  j++;
 }
}
