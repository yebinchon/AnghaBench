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
struct msgdma_device {int /*<<< orphan*/  lock; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msgdma_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct msgdma_device* FUNC3 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC4(struct dma_chan *chan)
{
	struct msgdma_device *mdev = FUNC3(chan);
	unsigned long flags;

	FUNC1(&mdev->lock, flags);
	FUNC0(mdev);
	FUNC2(&mdev->lock, flags);
}