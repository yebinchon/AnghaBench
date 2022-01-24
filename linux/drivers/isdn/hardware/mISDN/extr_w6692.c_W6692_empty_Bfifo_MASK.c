#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct w6692_hw {char* name; int /*<<< orphan*/  log; } ;
struct TYPE_2__ {scalar_t__ state; int dropcnt; int nr; scalar_t__ rx_skb; int /*<<< orphan*/  Flags; struct w6692_hw* hw; } ;
struct w6692_ch {TYPE_1__ bch; scalar_t__ addr; } ;

/* Variables and functions */
 int DEBUG_HW_DFIFO ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  FLG_RX_OFF ; 
 scalar_t__ ISDN_P_NONE ; 
 int /*<<< orphan*/  W_B_CMDR ; 
 int W_B_CMDR_RACK ; 
 int W_B_CMDR_RACT ; 
 scalar_t__ W_B_RFIFO ; 
 int /*<<< orphan*/  FUNC0 (struct w6692_ch*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int,char*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11(struct w6692_ch *wch, int count)
{
	struct w6692_hw *card = wch->bch.hw;
	u8 *ptr;
	int maxlen;

	FUNC3("%s: empty_Bfifo %d\n", card->name, count);
	if (FUNC10(wch->bch.state == ISDN_P_NONE)) {
		FUNC3("%s: empty_Bfifo ISDN_P_NONE\n", card->name);
		FUNC0(wch, W_B_CMDR, W_B_CMDR_RACK | W_B_CMDR_RACT);
		if (wch->bch.rx_skb)
			FUNC7(wch->bch.rx_skb, 0);
		return;
	}
	if (FUNC9(FLG_RX_OFF, &wch->bch.Flags)) {
		wch->bch.dropcnt += count;
		FUNC0(wch, W_B_CMDR, W_B_CMDR_RACK | W_B_CMDR_RACT);
		return;
	}
	maxlen = FUNC1(&wch->bch, count);
	if (maxlen < 0) {
		FUNC0(wch, W_B_CMDR, W_B_CMDR_RACK | W_B_CMDR_RACT);
		if (wch->bch.rx_skb)
			FUNC7(wch->bch.rx_skb, 0);
		FUNC4("%s.B%d: No bufferspace for %d bytes\n",
			   card->name, wch->bch.nr, count);
		return;
	}
	ptr = FUNC6(wch->bch.rx_skb, count);
	FUNC2(wch->addr + W_B_RFIFO, ptr, count);
	FUNC0(wch, W_B_CMDR, W_B_CMDR_RACK | W_B_CMDR_RACT);
	if (debug & DEBUG_HW_DFIFO) {
		FUNC8(card->log, 63, "B%1d-recv %s %d ",
			 wch->bch.nr, card->name, count);
		FUNC5(card->log, DUMP_PREFIX_OFFSET, ptr, count);
	}
}