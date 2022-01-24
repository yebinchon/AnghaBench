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
typedef  size_t u32 ;
struct mic_dma_chan {size_t last_tail; int /*<<< orphan*/  cleanup_lock; struct dma_async_tx_descriptor* tx_array; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/ * callback; scalar_t__ cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_async_tx_descriptor*,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (size_t) ; 
 size_t FUNC3 (struct mic_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct mic_dma_chan *ch)
{
	struct dma_async_tx_descriptor *tx;
	u32 tail;
	u32 last_tail;

	FUNC6(&ch->cleanup_lock);
	tail = FUNC3(ch);
	/*
	 * This is the barrier pair for smp_wmb() in fn.
	 * mic_dma_tx_submit_unlock. It's required so that we read the
	 * updated cookie value from tx->cookie.
	 */
	FUNC5();
	for (last_tail = ch->last_tail; tail != last_tail;) {
		tx = &ch->tx_array[last_tail];
		if (tx->cookie) {
			FUNC0(tx);
			FUNC1(tx, NULL);
			tx->callback = NULL;
		}
		last_tail = FUNC2(last_tail);
	}
	/* finish all completion callbacks before incrementing tail */
	FUNC4();
	ch->last_tail = last_tail;
	FUNC7(&ch->cleanup_lock);
}