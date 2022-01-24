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
struct l1oip {size_t d_idx; int /*<<< orphan*/  list; TYPE_1__* chan; int /*<<< orphan*/  dev; scalar_t__ registered; scalar_t__ socket_thread; int /*<<< orphan*/  workq; int /*<<< orphan*/  timeout_tl; int /*<<< orphan*/  keep_tl; } ;
struct TYPE_2__ {int /*<<< orphan*/  disorder_skb; struct l1oip* bch; struct l1oip* dch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l1oip*) ; 
 int /*<<< orphan*/  l1oip_lock ; 
 int /*<<< orphan*/  FUNC4 (struct l1oip*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct l1oip*) ; 
 int /*<<< orphan*/  FUNC7 (struct l1oip*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct l1oip *hc)
{
	int	ch;

	if (FUNC11(&hc->keep_tl))
		FUNC1(&hc->keep_tl);

	if (FUNC11(&hc->timeout_tl))
		FUNC1(&hc->timeout_tl);

	FUNC0(&hc->workq);

	if (hc->socket_thread)
		FUNC4(hc);

	if (hc->registered && hc->chan[hc->d_idx].dch)
		FUNC8(&hc->chan[hc->d_idx].dch->dev);
	for (ch = 0; ch < 128; ch++) {
		if (hc->chan[ch].dch) {
			FUNC7(hc->chan[ch].dch);
			FUNC3(hc->chan[ch].dch);
		}
		if (hc->chan[ch].bch) {
			FUNC6(hc->chan[ch].bch);
			FUNC3(hc->chan[ch].bch);
#ifdef REORDER_DEBUG
			dev_kfree_skb(hc->chan[ch].disorder_skb);
#endif
		}
	}

	FUNC9(&l1oip_lock);
	FUNC5(&hc->list);
	FUNC10(&l1oip_lock);

	FUNC3(hc);
}