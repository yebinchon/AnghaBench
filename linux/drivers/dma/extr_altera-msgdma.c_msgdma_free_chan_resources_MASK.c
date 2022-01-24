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
struct msgdma_device {int /*<<< orphan*/  sw_desq; int /*<<< orphan*/  lock; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msgdma_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct msgdma_device* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC5(struct dma_chan *dchan)
{
	struct msgdma_device *mdev = FUNC4(dchan);
	unsigned long flags;

	FUNC2(&mdev->lock, flags);
	FUNC1(mdev);
	FUNC3(&mdev->lock, flags);
	FUNC0(mdev->sw_desq);
}