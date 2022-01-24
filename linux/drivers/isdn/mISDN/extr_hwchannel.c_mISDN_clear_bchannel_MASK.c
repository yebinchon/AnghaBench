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
struct bchannel {scalar_t__ rcount; int /*<<< orphan*/  rqueue; int /*<<< orphan*/  init_maxlen; int /*<<< orphan*/  next_maxlen; int /*<<< orphan*/  maxlen; int /*<<< orphan*/  init_minlen; int /*<<< orphan*/  next_minlen; int /*<<< orphan*/  minlen; scalar_t__ dropcnt; int /*<<< orphan*/  Flags; int /*<<< orphan*/ * next_skb; int /*<<< orphan*/ * rx_skb; scalar_t__ tx_idx; int /*<<< orphan*/ * tx_skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_ACTIVE ; 
 int /*<<< orphan*/  FLG_FILLEMPTY ; 
 int /*<<< orphan*/  FLG_RX_OFF ; 
 int /*<<< orphan*/  FLG_TX_BUSY ; 
 int /*<<< orphan*/  FLG_TX_EMPTY ; 
 int /*<<< orphan*/  FLG_TX_NEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(struct bchannel *ch)
{
	if (ch->tx_skb) {
		FUNC0(ch->tx_skb);
		ch->tx_skb = NULL;
	}
	ch->tx_idx = 0;
	if (ch->rx_skb) {
		FUNC0(ch->rx_skb);
		ch->rx_skb = NULL;
	}
	if (ch->next_skb) {
		FUNC0(ch->next_skb);
		ch->next_skb = NULL;
	}
	FUNC2(FLG_TX_BUSY, &ch->Flags);
	FUNC2(FLG_TX_NEXT, &ch->Flags);
	FUNC2(FLG_ACTIVE, &ch->Flags);
	FUNC2(FLG_FILLEMPTY, &ch->Flags);
	FUNC2(FLG_TX_EMPTY, &ch->Flags);
	FUNC2(FLG_RX_OFF, &ch->Flags);
	ch->dropcnt = 0;
	ch->minlen = ch->init_minlen;
	ch->next_minlen = ch->init_minlen;
	ch->maxlen = ch->init_maxlen;
	ch->next_maxlen = ch->init_maxlen;
	FUNC1(&ch->rqueue);
	ch->rcount = 0;
}