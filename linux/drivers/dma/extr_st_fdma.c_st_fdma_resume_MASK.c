#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int chan_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; TYPE_1__ chan; } ;
struct st_fdma_chan {TYPE_2__ vchan; scalar_t__ fdesc; TYPE_3__* fdev; } ;
struct dma_chan {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long FDMA_CH_CMD_DATA_MASK ; 
 int /*<<< orphan*/  FDMA_CH_CMD_OFST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned long FUNC1 (struct st_fdma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct st_fdma_chan*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct st_fdma_chan* FUNC5 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC6(struct dma_chan *chan)
{
	unsigned long flags;
	unsigned long val;
	struct st_fdma_chan *fchan = FUNC5(chan);
	int ch_id = fchan->vchan.chan.chan_id;

	FUNC0(fchan->fdev->dev, "resume chan:%d\n", ch_id);

	FUNC3(&fchan->vchan.lock, flags);
	if (fchan->fdesc) {
		val = FUNC1(fchan, FDMA_CH_CMD_OFST);
		val &= FDMA_CH_CMD_DATA_MASK;
		FUNC2(fchan, val, FDMA_CH_CMD_OFST);
	}
	FUNC4(&fchan->vchan.lock, flags);

	return 0;
}