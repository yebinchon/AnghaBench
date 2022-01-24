#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int chan_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_1__ chan; } ;
struct st_fdma_chan {TYPE_2__ vchan; int /*<<< orphan*/ * fdesc; TYPE_4__* fdev; } ;
struct dma_chan {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FDMA_CMD_SET_OFST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct st_fdma_chan* FUNC6 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dma_chan *chan)
{
	unsigned long flags;
	FUNC1(head);
	struct st_fdma_chan *fchan = FUNC6(chan);
	int ch_id = fchan->vchan.chan.chan_id;
	unsigned long cmd = FUNC0(ch_id);

	FUNC2(fchan->fdev->dev, "terminate chan:%d\n", ch_id);

	FUNC4(&fchan->vchan.lock, flags);
	FUNC3(fchan->fdev, cmd, FDMA_CMD_SET_OFST);
	fchan->fdesc = NULL;
	FUNC8(&fchan->vchan, &head);
	FUNC5(&fchan->vchan.lock, flags);
	FUNC7(&fchan->vchan, &head);

	return 0;
}