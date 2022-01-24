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
struct pl08x_phy_chan {int /*<<< orphan*/  id; } ;
struct pl08x_driver_data {TYPE_1__* adev; } ;
struct pl08x_dma_chan {int /*<<< orphan*/  state; struct pl08x_phy_chan* phychan; int /*<<< orphan*/  name; int /*<<< orphan*/  waiting_at; struct pl08x_driver_data* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PL08X_CHAN_RUNNING ; 
 int /*<<< orphan*/  PL08X_CHAN_WAITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  jiffies ; 
 struct pl08x_phy_chan* FUNC1 (struct pl08x_driver_data*,struct pl08x_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct pl08x_dma_chan*) ; 

__attribute__((used)) static void FUNC3(struct pl08x_dma_chan *plchan)
{
	struct pl08x_driver_data *pl08x = plchan->host;
	struct pl08x_phy_chan *ch;

	ch = FUNC1(pl08x, plchan);
	if (!ch) {
		FUNC0(&pl08x->adev->dev, "no physical channel available for xfer on %s\n", plchan->name);
		plchan->state = PL08X_CHAN_WAITING;
		plchan->waiting_at = jiffies;
		return;
	}

	FUNC0(&pl08x->adev->dev, "allocated physical channel %d for xfer on %s\n",
		ch->id, plchan->name);

	plchan->phychan = ch;
	plchan->state = PL08X_CHAN_RUNNING;
	FUNC2(plchan);
}