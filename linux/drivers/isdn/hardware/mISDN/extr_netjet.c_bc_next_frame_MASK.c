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
struct TYPE_3__ {scalar_t__ tx_idx; int /*<<< orphan*/  Flags; TYPE_2__* tx_skb; } ;
struct tiger_ch {TYPE_1__ bch; } ;
struct TYPE_4__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_FILLEMPTY ; 
 int /*<<< orphan*/  FLG_TX_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct tiger_ch*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct tiger_ch *bc)
{
	int ret = 1;

	if (bc->bch.tx_skb && bc->bch.tx_idx < bc->bch.tx_skb->len) {
		FUNC1(bc);
	} else {
		FUNC0(bc->bch.tx_skb);
		if (FUNC2(&bc->bch)) {
			FUNC1(bc);
			FUNC3(FLG_TX_EMPTY, &bc->bch.Flags);
		} else if (FUNC5(FLG_TX_EMPTY, &bc->bch.Flags)) {
			FUNC1(bc);
		} else if (FUNC5(FLG_FILLEMPTY, &bc->bch.Flags)) {
			FUNC4(FLG_TX_EMPTY, &bc->bch.Flags);
			ret = 0;
		} else {
			ret = 0;
		}
	}
	return ret;
}