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
struct mdc_tx_desc {int cmd_loaded; int list_cmds_done; int list_len; int list_period_len; int /*<<< orphan*/  vd; scalar_t__ cyclic; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct mdc_chan {TYPE_1__ vc; struct mdc_tx_desc* desc; int /*<<< orphan*/  chan_nr; int /*<<< orphan*/  mdma; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct mdc_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct mdc_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct mdc_chan *mchan = (struct mdc_chan *)dev_id;
	struct mdc_tx_desc *mdesc;
	unsigned int i, new_events;

	FUNC5(&mchan->vc.lock);

	FUNC0(FUNC4(mchan->mdma), "IRQ on channel %d\n", mchan->chan_nr);

	new_events = FUNC2(mchan);

	if (!new_events)
		goto out;

	mdesc = mchan->desc;
	if (!mdesc) {
		FUNC1(FUNC4(mchan->mdma),
			 "IRQ with no active descriptor on channel %d\n",
			 mchan->chan_nr);
		goto out;
	}

	for (i = 0; i < new_events; i++) {
		/*
		 * The first interrupt in a transfer indicates that the
		 * command list has been loaded, not that a command has
		 * been completed.
		 */
		if (!mdesc->cmd_loaded) {
			mdesc->cmd_loaded = true;
			continue;
		}

		mdesc->list_cmds_done++;
		if (mdesc->cyclic) {
			mdesc->list_cmds_done %= mdesc->list_len;
			if (mdesc->list_cmds_done % mdesc->list_period_len == 0)
				FUNC8(&mdesc->vd);
		} else if (mdesc->list_cmds_done == mdesc->list_len) {
			mchan->desc = NULL;
			FUNC7(&mdesc->vd);
			FUNC3(mchan);
			break;
		}
	}
out:
	FUNC6(&mchan->vc.lock);

	return IRQ_HANDLED;
}