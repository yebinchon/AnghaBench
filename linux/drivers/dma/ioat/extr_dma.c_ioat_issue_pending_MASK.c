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
struct ioatdma_chan {int /*<<< orphan*/  prep_lock; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ioatdma_chan*) ; 
 scalar_t__ FUNC1 (struct ioatdma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ioatdma_chan* FUNC4 (struct dma_chan*) ; 

void FUNC5(struct dma_chan *c)
{
	struct ioatdma_chan *ioat_chan = FUNC4(c);

	if (FUNC1(ioat_chan)) {
		FUNC2(&ioat_chan->prep_lock);
		FUNC0(ioat_chan);
		FUNC3(&ioat_chan->prep_lock);
	}
}