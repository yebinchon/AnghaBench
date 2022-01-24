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
struct msgdma_sw_desc {int /*<<< orphan*/  node; } ;
struct msgdma_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  pending_list; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  chan; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct msgdma_device* FUNC4 (int /*<<< orphan*/ ) ; 
 struct msgdma_sw_desc* FUNC5 (struct dma_async_tx_descriptor*) ; 

__attribute__((used)) static dma_cookie_t FUNC6(struct dma_async_tx_descriptor *tx)
{
	struct msgdma_device *mdev = FUNC4(tx->chan);
	struct msgdma_sw_desc *new;
	dma_cookie_t cookie;
	unsigned long flags;

	new = FUNC5(tx);
	FUNC2(&mdev->lock, flags);
	cookie = FUNC0(tx);

	FUNC1(&new->node, &mdev->pending_list);
	FUNC3(&mdev->lock, flags);

	return cookie;
}