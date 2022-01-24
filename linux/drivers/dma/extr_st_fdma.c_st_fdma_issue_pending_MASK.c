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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct st_fdma_chan {TYPE_1__ vchan; int /*<<< orphan*/  fdesc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct st_fdma_chan*) ; 
 struct st_fdma_chan* FUNC3 (struct dma_chan*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct dma_chan *chan)
{
	struct st_fdma_chan *fchan = FUNC3(chan);
	unsigned long flags;

	FUNC0(&fchan->vchan.lock, flags);

	if (FUNC4(&fchan->vchan) && !fchan->fdesc)
		FUNC2(fchan);

	FUNC1(&fchan->vchan.lock, flags);
}