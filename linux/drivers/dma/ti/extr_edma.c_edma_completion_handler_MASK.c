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
struct edma_desc {scalar_t__ processed; scalar_t__ pset_nr; scalar_t__ processed_stat; scalar_t__ residue; scalar_t__ residue_stat; scalar_t__ sg_len; int /*<<< orphan*/  vdesc; scalar_t__ cyclic; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_2__ chan; } ;
struct edma_chan {TYPE_3__ vchan; int /*<<< orphan*/  ch_num; struct edma_desc* edesc; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct edma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct edma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct edma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct edma_chan *echan)
{
	struct device *dev = echan->vchan.chan.device->dev;
	struct edma_desc *edesc;

	FUNC4(&echan->vchan.lock);
	edesc = echan->edesc;
	if (edesc) {
		if (edesc->cyclic) {
			FUNC7(&edesc->vdesc);
			FUNC5(&echan->vchan.lock);
			return;
		} else if (edesc->processed == edesc->pset_nr) {
			edesc->residue = 0;
			FUNC3(echan);
			FUNC6(&edesc->vdesc);
			echan->edesc = NULL;

			FUNC0(dev, "Transfer completed on channel %d\n",
				echan->ch_num);
		} else {
			FUNC0(dev, "Sub transfer completed on channel %d\n",
				echan->ch_num);

			FUNC2(echan);

			/* Update statistics for tx_status */
			edesc->residue -= edesc->sg_len;
			edesc->residue_stat = edesc->residue;
			edesc->processed_stat = edesc->processed;
		}
		FUNC1(echan);
	}

	FUNC5(&echan->vchan.lock);
}