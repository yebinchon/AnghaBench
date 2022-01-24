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
typedef  int /*<<< orphan*/  u32 ;
struct ioatdma_device {struct ioatdma_chan** idx; } ;
struct ioatdma_chan {scalar_t__ reg_base; int /*<<< orphan*/  prep_lock; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 scalar_t__ IOAT_CHANERR_OFFSET ; 
 int /*<<< orphan*/  IOAT_CHAN_DOWN ; 
 int IOAT_MAX_CHANS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ioatdma_device *ioat_dma)
{
	struct ioatdma_chan *ioat_chan;
	u32 chanerr;
	int i;

	for (i = 0; i < IOAT_MAX_CHANS; i++) {
		ioat_chan = ioat_dma->idx[i];
		if (!ioat_chan)
			continue;

		FUNC2(&ioat_chan->prep_lock);
		FUNC0(IOAT_CHAN_DOWN, &ioat_chan->state);
		FUNC3(&ioat_chan->prep_lock);

		chanerr = FUNC1(ioat_chan->reg_base + IOAT_CHANERR_OFFSET);
		FUNC4(chanerr, ioat_chan->reg_base + IOAT_CHANERR_OFFSET);

		/* no need to reset as shutdown already did that */
	}
}