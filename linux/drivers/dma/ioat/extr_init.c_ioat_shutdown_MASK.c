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
struct pci_dev {int dummy; } ;
struct ioatdma_device {struct ioatdma_chan** idx; } ;
struct ioatdma_chan {int /*<<< orphan*/  timer; int /*<<< orphan*/  prep_lock; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOAT_CHAN_DOWN ; 
 int IOAT_MAX_CHANS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ioatdma_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ioatdma_chan*) ; 
 struct ioatdma_device* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct ioatdma_device *ioat_dma = FUNC3(pdev);
	struct ioatdma_chan *ioat_chan;
	int i;

	if (!ioat_dma)
		return;

	for (i = 0; i < IOAT_MAX_CHANS; i++) {
		ioat_chan = ioat_dma->idx[i];
		if (!ioat_chan)
			continue;

		FUNC5(&ioat_chan->prep_lock);
		FUNC4(IOAT_CHAN_DOWN, &ioat_chan->state);
		FUNC6(&ioat_chan->prep_lock);
		/*
		 * Synchronization rule for del_timer_sync():
		 *  - The caller must not hold locks which would prevent
		 *    completion of the timer's handler.
		 * So prep_lock cannot be held before calling it.
		 */
		FUNC0(&ioat_chan->timer);

		/* this should quiesce then reset */
		FUNC2(ioat_chan);
	}

	FUNC1(ioat_dma);
}