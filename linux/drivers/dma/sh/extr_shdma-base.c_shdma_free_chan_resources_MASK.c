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
struct shdma_ops {int /*<<< orphan*/  (* halt_channel ) (struct shdma_chan*) ;} ;
struct shdma_dev {struct shdma_ops* ops; } ;
struct shdma_chan {scalar_t__ slave_id; int /*<<< orphan*/  desc; int /*<<< orphan*/  chan_lock; scalar_t__ desc_num; int /*<<< orphan*/  ld_free; scalar_t__ real_slave_id; int /*<<< orphan*/  ld_queue; } ;
struct dma_chan {int /*<<< orphan*/ * private; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct shdma_chan*,int) ; 
 int /*<<< orphan*/  shdma_slave_used ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct shdma_chan*) ; 
 struct shdma_chan* FUNC9 (struct dma_chan*) ; 
 struct shdma_dev* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct dma_chan *chan)
{
	struct shdma_chan *schan = FUNC9(chan);
	struct shdma_dev *sdev = FUNC10(chan->device);
	const struct shdma_ops *ops = sdev->ops;
	FUNC0(list);

	/* Protect against ISR */
	FUNC6(&schan->chan_lock);
	ops->halt_channel(schan);
	FUNC7(&schan->chan_lock);

	/* Now no new interrupts will occur */

	/* Prepared and not submitted descriptors can still be on the queue */
	if (!FUNC3(&schan->ld_queue))
		FUNC5(schan, true);

	if (schan->slave_id >= 0) {
		/* The caller is holding dma_list_mutex */
		FUNC1(schan->slave_id, shdma_slave_used);
		chan->private = NULL;
	}

	schan->real_slave_id = 0;

	FUNC6(&schan->chan_lock);

	FUNC4(&schan->ld_free, &list);
	schan->desc_num = 0;

	FUNC7(&schan->chan_lock);

	FUNC2(schan->desc);
}