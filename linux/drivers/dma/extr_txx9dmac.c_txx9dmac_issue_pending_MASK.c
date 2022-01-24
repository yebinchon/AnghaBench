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
struct TYPE_2__ {int flags; } ;
struct txx9dmac_desc {TYPE_1__ txd; } ;
struct txx9dmac_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  active_list; int /*<<< orphan*/  queue; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int DMA_PREP_INTERRUPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct txx9dmac_chan* FUNC3 (struct dma_chan*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct txx9dmac_chan*,struct txx9dmac_desc*) ; 
 scalar_t__ FUNC6 (struct txx9dmac_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct txx9dmac_chan*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct txx9dmac_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct txx9dmac_chan*) ; 
 struct txx9dmac_desc* FUNC10 (struct txx9dmac_chan*) ; 
 int /*<<< orphan*/  FUNC11 (struct txx9dmac_chan*) ; 

__attribute__((used)) static void FUNC12(struct dma_chan *chan)
{
	struct txx9dmac_chan *dc = FUNC3(chan);

	FUNC1(&dc->lock);

	if (!FUNC0(&dc->active_list))
		FUNC11(dc);
	if (!FUNC0(&dc->queue)) {
		if (FUNC0(&dc->active_list)) {
			FUNC7(dc, &dc->active_list);
			FUNC8(dc, FUNC9(dc));
		} else if (FUNC4()) {
			struct txx9dmac_desc *prev = FUNC10(dc);

			if (!(prev->txd.flags & DMA_PREP_INTERRUPT) ||
			    FUNC6(dc))
				FUNC5(dc, prev);
		}
	}

	FUNC2(&dc->lock);
}