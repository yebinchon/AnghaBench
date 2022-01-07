
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct bzfifo {TYPE_1__* za; } ;
struct bchannel {int dropcnt; int rx_skb; int nr; int Flags; } ;
typedef int __le16 ;
struct TYPE_2__ {int z1; } ;


 int B_FIFO_SIZE ;
 int B_SUB_VAL ;
 int FLG_RX_OFF ;
 size_t MAX_B_FRAMES ;
 int bchannel_get_rxbuf (struct bchannel*,int) ;
 int cpu_to_le16 (int) ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int pr_warning (char*,int ,int) ;
 int recv_Bchannel (struct bchannel*,int,int) ;
 int * skb_put (int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
hfcpci_empty_fifo_trans(struct bchannel *bch, struct bzfifo *rxbz,
   struct bzfifo *txbz, u_char *bdata)
{
 __le16 *z1r, *z2r, *z1t, *z2t;
 int new_z2, fcnt_rx, fcnt_tx, maxlen;
 u_char *ptr, *ptr1;

 z1r = &rxbz->za[MAX_B_FRAMES].z1;
 z2r = z1r + 1;
 z1t = &txbz->za[MAX_B_FRAMES].z1;
 z2t = z1t + 1;

 fcnt_rx = le16_to_cpu(*z1r) - le16_to_cpu(*z2r);
 if (!fcnt_rx)
  return;

 if (fcnt_rx <= 0)
  fcnt_rx += B_FIFO_SIZE;
 new_z2 = le16_to_cpu(*z2r) + fcnt_rx;
 if (new_z2 >= (B_FIFO_SIZE + B_SUB_VAL))
  new_z2 -= B_FIFO_SIZE;

 fcnt_tx = le16_to_cpu(*z2t) - le16_to_cpu(*z1t);
 if (fcnt_tx <= 0)
  fcnt_tx += B_FIFO_SIZE;

 fcnt_tx = B_FIFO_SIZE - fcnt_tx;


 if (test_bit(FLG_RX_OFF, &bch->Flags)) {
  bch->dropcnt += fcnt_rx;
  *z2r = cpu_to_le16(new_z2);
  return;
 }
 maxlen = bchannel_get_rxbuf(bch, fcnt_rx);
 if (maxlen < 0) {
  pr_warning("B%d: No bufferspace for %d bytes\n",
      bch->nr, fcnt_rx);
 } else {
  ptr = skb_put(bch->rx_skb, fcnt_rx);
  if (le16_to_cpu(*z2r) + fcnt_rx <= B_FIFO_SIZE + B_SUB_VAL)
   maxlen = fcnt_rx;
  else
   maxlen = B_FIFO_SIZE + B_SUB_VAL - le16_to_cpu(*z2r);


  ptr1 = bdata + (le16_to_cpu(*z2r) - B_SUB_VAL);

  memcpy(ptr, ptr1, maxlen);
  fcnt_rx -= maxlen;

  if (fcnt_rx) {
   ptr += maxlen;
   ptr1 = bdata;
   memcpy(ptr, ptr1, fcnt_rx);
  }
  recv_Bchannel(bch, fcnt_tx, 0);
 }
 *z2r = cpu_to_le16(new_z2);
}
