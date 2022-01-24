#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mISDNhead {int /*<<< orphan*/  id; int /*<<< orphan*/  prim; } ;
struct dchannel {TYPE_1__* rx_skb; int /*<<< orphan*/  rqueue; } ;
struct TYPE_4__ {int len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_RECVQUEUE ; 
 int /*<<< orphan*/  PH_DATA_IND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mISDNhead* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct dchannel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC5(struct dchannel *dch)
{
	struct mISDNhead *hh;

	if (dch->rx_skb->len < 2) { /* at least 2 for sapi / tei */
		FUNC0(dch->rx_skb);
		dch->rx_skb = NULL;
		return;
	}
	hh = FUNC2(dch->rx_skb);
	hh->prim = PH_DATA_IND;
	hh->id = FUNC1(dch->rx_skb->data);
	FUNC4(&dch->rqueue, dch->rx_skb);
	dch->rx_skb = NULL;
	FUNC3(dch, FLG_RECVQUEUE);
}