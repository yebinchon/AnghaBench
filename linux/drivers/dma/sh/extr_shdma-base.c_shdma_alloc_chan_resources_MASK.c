#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct shdma_slave {int /*<<< orphan*/  slave_id; } ;
struct shdma_ops {struct shdma_desc* (* embedded_desc ) (int /*<<< orphan*/ ,int) ;} ;
struct shdma_dev {int /*<<< orphan*/  desc_size; struct shdma_ops* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_submit; } ;
struct shdma_desc {int /*<<< orphan*/  node; int /*<<< orphan*/  mark; TYPE_1__ async_tx; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct shdma_chan {int desc_num; int /*<<< orphan*/  ld_free; TYPE_2__ dma_chan; int /*<<< orphan*/  desc; int /*<<< orphan*/  slave_id; int /*<<< orphan*/  real_slave_id; } ;
struct dma_chan {struct shdma_slave* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_IDLE ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NR_DESCS_PER_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct shdma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shdma_slave_used ; 
 int /*<<< orphan*/  shdma_tx_submit ; 
 struct shdma_desc* FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct shdma_chan* FUNC6 (struct dma_chan*) ; 
 struct shdma_dev* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dma_chan *chan)
{
	struct shdma_chan *schan = FUNC6(chan);
	struct shdma_dev *sdev = FUNC7(schan->dma_chan.device);
	const struct shdma_ops *ops = sdev->ops;
	struct shdma_desc *desc;
	struct shdma_slave *slave = chan->private;
	int ret, i;

	/*
	 * This relies on the guarantee from dmaengine that alloc_chan_resources
	 * never runs concurrently with itself or free_chan_resources.
	 */
	if (slave) {
		/* Legacy mode: .private is set in filter */
		schan->real_slave_id = slave->slave_id;
		ret = FUNC4(schan, 0);
		if (ret < 0)
			goto esetslave;
	} else {
		/* Normal mode: real_slave_id was set by filter */
		schan->slave_id = -EINVAL;
	}

	schan->desc = FUNC2(NR_DESCS_PER_CHANNEL,
			      sdev->desc_size, GFP_KERNEL);
	if (!schan->desc) {
		ret = -ENOMEM;
		goto edescalloc;
	}
	schan->desc_num = NR_DESCS_PER_CHANNEL;

	for (i = 0; i < NR_DESCS_PER_CHANNEL; i++) {
		desc = ops->embedded_desc(schan->desc, i);
		FUNC1(&desc->async_tx,
					     &schan->dma_chan);
		desc->async_tx.tx_submit = shdma_tx_submit;
		desc->mark = DESC_IDLE;

		FUNC3(&desc->node, &schan->ld_free);
	}

	return NR_DESCS_PER_CHANNEL;

edescalloc:
	if (slave)
esetslave:
		FUNC0(slave->slave_id, shdma_slave_used);
	chan->private = NULL;
	return ret;
}