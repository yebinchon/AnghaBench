#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct w6692_hw {char* name; int /*<<< orphan*/  log; } ;
struct TYPE_4__ {int* fill; int tx_idx; int nr; int /*<<< orphan*/  Flags; TYPE_1__* tx_skb; struct w6692_hw* hw; } ;
struct w6692_ch {TYPE_2__ bch; scalar_t__ addr; } ;
struct TYPE_3__ {int len; int* data; } ;

/* Variables and functions */
 int DEBUG_HW_BFIFO ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  FLG_HDLC ; 
 int /*<<< orphan*/  FLG_TX_EMPTY ; 
 int MISDN_BCH_FILL_SIZE ; 
 int /*<<< orphan*/  W_B_CMDR ; 
 int W_B_CMDR_RACT ; 
 int W_B_CMDR_XME ; 
 int W_B_CMDR_XMS ; 
 int W_B_FIFO_THRESH ; 
 scalar_t__ W_B_XFIFO ; 
 int /*<<< orphan*/  FUNC0 (struct w6692_ch*,int /*<<< orphan*/ ,int) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct w6692_ch *wch)
{
	struct w6692_hw *card = wch->bch.hw;
	int count, fillempty = 0;
	u8 *ptr, cmd = W_B_CMDR_RACT | W_B_CMDR_XMS;

	FUNC2("%s: fill Bfifo\n", card->name);
	if (!wch->bch.tx_skb) {
		if (!FUNC5(FLG_TX_EMPTY, &wch->bch.Flags))
			return;
		ptr = wch->bch.fill;
		count = W_B_FIFO_THRESH;
		fillempty = 1;
	} else {
		count = wch->bch.tx_skb->len - wch->bch.tx_idx;
		if (count <= 0)
			return;
		ptr = wch->bch.tx_skb->data + wch->bch.tx_idx;
	}
	if (count > W_B_FIFO_THRESH)
		count = W_B_FIFO_THRESH;
	else if (FUNC5(FLG_HDLC, &wch->bch.Flags))
		cmd |= W_B_CMDR_XME;

	FUNC2("%s: fill Bfifo%d/%d\n", card->name,
		 count, wch->bch.tx_idx);
	wch->bch.tx_idx += count;
	if (fillempty) {
		while (count > 0) {
			FUNC1(wch->addr + W_B_XFIFO, ptr, MISDN_BCH_FILL_SIZE);
			count -= MISDN_BCH_FILL_SIZE;
		}
	} else {
		FUNC1(wch->addr + W_B_XFIFO, ptr, count);
	}
	FUNC0(wch, W_B_CMDR, cmd);
	if ((debug & DEBUG_HW_BFIFO) && !fillempty) {
		FUNC4(card->log, 63, "B%1d-send %s %d ",
			 wch->bch.nr, card->name, count);
		FUNC3(card->log, DUMP_PREFIX_OFFSET, ptr, count);
	}
}