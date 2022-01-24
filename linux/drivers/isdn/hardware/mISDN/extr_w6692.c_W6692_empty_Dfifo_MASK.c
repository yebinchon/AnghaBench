#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct dchannel {int maxlen; TYPE_1__* rx_skb; } ;
struct w6692_hw {char* name; int /*<<< orphan*/  log; scalar_t__ addr; struct dchannel dch; } ;
struct TYPE_3__ {int len; } ;

/* Variables and functions */
 int DEBUG_HW_DFIFO ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  W_D_CMDR ; 
 int /*<<< orphan*/  W_D_CMDR_RACK ; 
 scalar_t__ W_D_RFIFO ; 
 int /*<<< orphan*/  FUNC0 (struct w6692_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,char*,int) ; 

__attribute__((used)) static void
FUNC8(struct w6692_hw *card, int count)
{
	struct dchannel *dch = &card->dch;
	u8 *ptr;

	FUNC3("%s: empty_Dfifo %d\n", card->name, count);
	if (!dch->rx_skb) {
		dch->rx_skb = FUNC2(card->dch.maxlen, GFP_ATOMIC);
		if (!dch->rx_skb) {
			FUNC4("%s: D receive out of memory\n", card->name);
			FUNC0(card, W_D_CMDR, W_D_CMDR_RACK);
			return;
		}
	}
	if ((dch->rx_skb->len + count) >= dch->maxlen) {
		FUNC3("%s: empty_Dfifo overrun %d\n", card->name,
			 dch->rx_skb->len + count);
		FUNC0(card, W_D_CMDR, W_D_CMDR_RACK);
		return;
	}
	ptr = FUNC6(dch->rx_skb, count);
	FUNC1(card->addr + W_D_RFIFO, ptr, count);
	FUNC0(card, W_D_CMDR, W_D_CMDR_RACK);
	if (debug & DEBUG_HW_DFIFO) {
		FUNC7(card->log, 63, "D-recv %s %d ",
			 card->name, count);
		FUNC5(card->log, DUMP_PREFIX_OFFSET, ptr, count);
	}
}