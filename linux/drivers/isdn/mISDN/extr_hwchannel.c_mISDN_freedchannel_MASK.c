#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dchannel {int /*<<< orphan*/  workq; int /*<<< orphan*/  rqueue; int /*<<< orphan*/  squeue; int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/ * tx_skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(struct dchannel *ch)
{
	if (ch->tx_skb) {
		FUNC0(ch->tx_skb);
		ch->tx_skb = NULL;
	}
	if (ch->rx_skb) {
		FUNC0(ch->rx_skb);
		ch->rx_skb = NULL;
	}
	FUNC2(&ch->squeue);
	FUNC2(&ch->rqueue);
	FUNC1(&ch->workq);
	return 0;
}