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
struct TYPE_4__ {int nr; int dropcnt; int debug; scalar_t__ rx_skb; int /*<<< orphan*/  Flags; } ;
struct hscx_hw {int /*<<< orphan*/  log; TYPE_1__* ip; TYPE_2__ bch; scalar_t__ off; } ;
struct TYPE_3__ {char* name; int type; int /*<<< orphan*/  hw; int /*<<< orphan*/  (* read_fifo ) (int /*<<< orphan*/ ,scalar_t__,int*,int) ;} ;

/* Variables and functions */
 int DEBUG_HW_BFIFO ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  FLG_RX_OFF ; 
 scalar_t__ IPACX_RFIFOB ; 
 int IPAC_TYPE_IPACX ; 
 int FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hscx_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int* FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct hscx_hw *hscx, u8 count)
{
	u8 *p;
	int maxlen;

	FUNC2("%s: B%1d %d\n", hscx->ip->name, hscx->bch.nr, count);
	if (FUNC10(FLG_RX_OFF, &hscx->bch.Flags)) {
		hscx->bch.dropcnt += count;
		FUNC1(hscx, 0x80); /* RMC */
		return;
	}
	maxlen = FUNC0(&hscx->bch, count);
	if (maxlen < 0) {
		FUNC1(hscx, 0x80); /* RMC */
		if (hscx->bch.rx_skb)
			FUNC6(hscx->bch.rx_skb, 0);
		FUNC3("%s.B%d: No bufferspace for %d bytes\n",
			   hscx->ip->name, hscx->bch.nr, count);
		return;
	}
	p = FUNC5(hscx->bch.rx_skb, count);

	if (hscx->ip->type & IPAC_TYPE_IPACX)
		hscx->ip->read_fifo(hscx->ip->hw,
				    hscx->off + IPACX_RFIFOB, p, count);
	else
		hscx->ip->read_fifo(hscx->ip->hw,
				    hscx->off, p, count);

	FUNC1(hscx, 0x80); /* RMC */

	if (hscx->bch.debug & DEBUG_HW_BFIFO) {
		FUNC7(hscx->log, 64, "B%1d-recv %s %d ",
			 hscx->bch.nr, hscx->ip->name, count);
		FUNC4(hscx->log, DUMP_PREFIX_OFFSET, p, count);
	}
}