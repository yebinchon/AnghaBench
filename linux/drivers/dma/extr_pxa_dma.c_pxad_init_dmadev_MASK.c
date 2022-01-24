#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  device_terminate_all; int /*<<< orphan*/  device_synchronize; int /*<<< orphan*/  device_config; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_free_chan_resources; int /*<<< orphan*/  device_alloc_chan_resources; int /*<<< orphan*/  channels; } ;
struct pxad_device {unsigned int nr_chans; unsigned int nr_requestors; TYPE_2__ slave; } ;
struct TYPE_6__ {int /*<<< orphan*/  desc_free; } ;
struct pxad_chan {int /*<<< orphan*/  wq_state; TYPE_1__ vc; int /*<<< orphan*/  prio; int /*<<< orphan*/  drcmr; } ;
struct TYPE_8__ {scalar_t__ coherent_dma_mask; } ;
struct platform_device {TYPE_4__ dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PXAD_PRIO_LOWEST ; 
 int /*<<< orphan*/  U32_MAX ; 
 struct pxad_chan* FUNC2 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,scalar_t__) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pxad_alloc_chan_resources ; 
 int /*<<< orphan*/  pxad_config ; 
 int /*<<< orphan*/  pxad_free_chan_resources ; 
 int /*<<< orphan*/  pxad_free_desc ; 
 int FUNC6 (struct platform_device*,struct pxad_device*,unsigned int) ; 
 int /*<<< orphan*/  pxad_issue_pending ; 
 int /*<<< orphan*/  pxad_synchronize ; 
 int /*<<< orphan*/  pxad_terminate_all ; 
 int /*<<< orphan*/  pxad_tx_status ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *op,
			    struct pxad_device *pdev,
			    unsigned int nr_phy_chans,
			    unsigned int nr_requestors)
{
	int ret;
	unsigned int i;
	struct pxad_chan *c;

	pdev->nr_chans = nr_phy_chans;
	pdev->nr_requestors = nr_requestors;
	FUNC1(&pdev->slave.channels);
	pdev->slave.device_alloc_chan_resources = pxad_alloc_chan_resources;
	pdev->slave.device_free_chan_resources = pxad_free_chan_resources;
	pdev->slave.device_tx_status = pxad_tx_status;
	pdev->slave.device_issue_pending = pxad_issue_pending;
	pdev->slave.device_config = pxad_config;
	pdev->slave.device_synchronize = pxad_synchronize;
	pdev->slave.device_terminate_all = pxad_terminate_all;

	if (op->dev.coherent_dma_mask)
		FUNC3(&op->dev, op->dev.coherent_dma_mask);
	else
		FUNC3(&op->dev, FUNC0(32));

	ret = FUNC6(op, pdev, nr_phy_chans);
	if (ret)
		return ret;

	for (i = 0; i < nr_phy_chans; i++) {
		c = FUNC2(&op->dev, sizeof(*c), GFP_KERNEL);
		if (!c)
			return -ENOMEM;

		c->drcmr = U32_MAX;
		c->prio = PXAD_PRIO_LOWEST;
		c->vc.desc_free = pxad_free_desc;
		FUNC7(&c->vc, &pdev->slave);
		FUNC5(&c->wq_state);
	}

	return FUNC4(&pdev->slave);
}