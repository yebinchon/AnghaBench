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
struct dchannel {scalar_t__ tx_idx; int /*<<< orphan*/  hw; TYPE_1__* tx_skb; } ;
struct TYPE_2__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct dchannel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct dchannel *dch)
{
	if (dch->tx_skb && dch->tx_idx < dch->tx_skb->len)
		FUNC2(dch->hw);
	else {
		FUNC0(dch->tx_skb);
		if (FUNC1(dch))
			FUNC2(dch->hw);
	}
}