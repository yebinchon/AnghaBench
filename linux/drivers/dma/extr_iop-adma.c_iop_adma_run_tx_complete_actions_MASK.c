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
struct dma_async_tx_descriptor {scalar_t__ cookie; } ;
struct iop_adma_desc_slot {int /*<<< orphan*/ * group_head; struct dma_async_tx_descriptor async_tx; } ;
struct iop_adma_chan {int dummy; } ;
typedef  scalar_t__ dma_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_async_tx_descriptor*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static dma_cookie_t
FUNC4(struct iop_adma_desc_slot *desc,
	struct iop_adma_chan *iop_chan, dma_cookie_t cookie)
{
	struct dma_async_tx_descriptor *tx = &desc->async_tx;

	FUNC0(tx->cookie < 0);
	if (tx->cookie > 0) {
		cookie = tx->cookie;
		tx->cookie = 0;

		/* call the callback (must not sleep or submit new
		 * operations to this channel)
		 */
		FUNC3(tx, NULL);

		FUNC1(tx);
		if (desc->group_head)
			desc->group_head = NULL;
	}

	/* run dependent operations */
	FUNC2(tx);

	return cookie;
}