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
struct TYPE_4__ {int size; int /*<<< orphan*/  idx; } ;
struct tiger_hw {TYPE_2__ send; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  nr; int /*<<< orphan*/  Flags; } ;
struct tiger_ch {int free; int txstate; int /*<<< orphan*/  idx; TYPE_1__ bch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_HDLC ; 
 int TX_IDLE ; 
 int TX_INIT ; 
 int TX_UNDERRUN ; 
 int FUNC0 (struct tiger_ch*) ; 
 int /*<<< orphan*/  FUNC1 (struct tiger_ch*) ; 
 int /*<<< orphan*/  FUNC2 (struct tiger_ch*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct tiger_hw *card, struct tiger_ch *bc)
{
	int ret;

	bc->free += card->send.size / 2;
	if (bc->free >= card->send.size) {
		if (!(bc->txstate & (TX_UNDERRUN | TX_INIT))) {
			FUNC4("%s: B%1d TX underrun state %x\n", card->name,
				bc->bch.nr, bc->txstate);
			bc->txstate |= TX_UNDERRUN;
		}
		bc->free = card->send.size;
	}
	ret = FUNC0(bc);
	if (!ret) {
		if (FUNC5(FLG_HDLC, &bc->bch.Flags)) {
			FUNC1(bc);
			return;
		}
		FUNC3("%s: B%1d TX no data free %d idx %d/%d\n", card->name,
			 bc->bch.nr, bc->free, bc->idx, card->send.idx);
		if (!(bc->txstate & (TX_IDLE | TX_INIT))) {
			FUNC2(bc, bc->idx, bc->free, 0xff);
			if (bc->free == card->send.size)
				bc->txstate |= TX_IDLE;
		}
	}
}