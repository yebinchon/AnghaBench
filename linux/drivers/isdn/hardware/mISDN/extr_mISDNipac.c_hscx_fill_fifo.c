
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int tx_idx; int nr; int debug; TYPE_1__* tx_skb; int Flags; int * fill; } ;
struct hscx_hw {int fifo_size; int * log; TYPE_3__* ip; TYPE_2__ bch; scalar_t__ off; } ;
struct TYPE_6__ {char* name; int type; int hw; int (* write_fifo ) (int ,scalar_t__,int *,int) ;} ;
struct TYPE_4__ {int len; int * data; } ;


 int DEBUG_HW_BFIFO ;
 int DUMP_PREFIX_OFFSET ;
 int FLG_TRANSPARENT ;
 int FLG_TX_EMPTY ;
 scalar_t__ IPACX_XFIFOB ;
 int IPAC_TYPE_IPACX ;
 int hscx_cmdr (struct hscx_hw*,int) ;
 int memset (int *,int ,int) ;
 int pr_debug (char*,char*,int,int,int,int) ;
 int print_hex_dump_bytes (int *,int ,int *,int) ;
 int snprintf (int *,int,char*,int,char*,int) ;
 int stub1 (int ,scalar_t__,int *,int) ;
 int stub2 (int ,scalar_t__,int *,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int waitforXFW (struct hscx_hw*) ;

__attribute__((used)) static void
hscx_fill_fifo(struct hscx_hw *hscx)
{
 int count, more;
 u8 *p;

 if (!hscx->bch.tx_skb) {
  if (!test_bit(FLG_TX_EMPTY, &hscx->bch.Flags))
   return;
  count = hscx->fifo_size;
  more = 1;
  p = hscx->log;
  memset(p, hscx->bch.fill[0], count);
 } else {
  count = hscx->bch.tx_skb->len - hscx->bch.tx_idx;
  if (count <= 0)
   return;
  p = hscx->bch.tx_skb->data + hscx->bch.tx_idx;

  more = test_bit(FLG_TRANSPARENT, &hscx->bch.Flags) ? 1 : 0;
  if (count > hscx->fifo_size) {
   count = hscx->fifo_size;
   more = 1;
  }
  pr_debug("%s: B%1d %d/%d/%d\n", hscx->ip->name, hscx->bch.nr,
    count, hscx->bch.tx_idx, hscx->bch.tx_skb->len);
  hscx->bch.tx_idx += count;
 }
 if (hscx->ip->type & IPAC_TYPE_IPACX)
  hscx->ip->write_fifo(hscx->ip->hw,
         hscx->off + IPACX_XFIFOB, p, count);
 else {
  waitforXFW(hscx);
  hscx->ip->write_fifo(hscx->ip->hw,
         hscx->off, p, count);
 }
 hscx_cmdr(hscx, more ? 0x08 : 0x0a);

 if (hscx->bch.tx_skb && (hscx->bch.debug & DEBUG_HW_BFIFO)) {
  snprintf(hscx->log, 64, "B%1d-send %s %d ",
    hscx->bch.nr, hscx->ip->name, count);
  print_hex_dump_bytes(hscx->log, DUMP_PREFIX_OFFSET, p, count);
 }
}
