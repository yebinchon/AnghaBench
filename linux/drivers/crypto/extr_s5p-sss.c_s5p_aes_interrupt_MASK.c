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
typedef  int u32 ;
struct s5p_aes_dev {int busy; int /*<<< orphan*/  hash_tasklet; int /*<<< orphan*/  lock; int /*<<< orphan*/  hash_sg_iter; struct ablkcipher_request* req; int /*<<< orphan*/  sg_src; int /*<<< orphan*/  sg_dst; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  hash_flags; } ;
struct platform_device {int dummy; } ;
struct ablkcipher_request {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FCINTPEND ; 
 int /*<<< orphan*/  FCINTSTAT ; 
 int /*<<< orphan*/  HASH_FLAGS_OUTPUT_READY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int SSS_FCINTSTAT_BRDMAINT ; 
 int SSS_FCINTSTAT_BTDMAINT ; 
 int SSS_FCINTSTAT_HDONEINT ; 
 int SSS_FCINTSTAT_HPARTINT ; 
 int SSS_FCINTSTAT_HRDMAINT ; 
 int SSS_HASH_PAUSE ; 
 int SSS_HASH_STATUS_MSG_DONE ; 
 int SSS_HASH_STATUS_PARTIAL_DONE ; 
 int FUNC0 (struct s5p_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSS_REG_HASH_CTRL_PAUSE ; 
 int /*<<< orphan*/  SSS_REG_HASH_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_aes_dev*,int /*<<< orphan*/ ,int) ; 
 struct s5p_aes_dev* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ablkcipher_request*,int) ; 
 int FUNC4 (struct s5p_aes_dev*) ; 
 int FUNC5 (struct s5p_aes_dev*) ; 
 int FUNC6 (struct s5p_aes_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct s5p_aes_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct s5p_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct s5p_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct s5p_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct s5p_aes_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC17(int irq, void *dev_id)
{
	struct platform_device *pdev = dev_id;
	struct s5p_aes_dev *dev = FUNC2(pdev);
	struct ablkcipher_request *req;
	int err_dma_tx = 0;
	int err_dma_rx = 0;
	int err_dma_hx = 0;
	bool tx_end = false;
	bool hx_end = false;
	unsigned long flags;
	u32 status, st_bits;
	int err;

	FUNC14(&dev->lock, flags);

	/*
	 * Handle rx or tx interrupt. If there is still data (scatterlist did not
	 * reach end), then map next scatterlist entry.
	 * In case of such mapping error, s5p_aes_complete() should be called.
	 *
	 * If there is no more data in tx scatter list, call s5p_aes_complete()
	 * and schedule new tasklet.
	 *
	 * Handle hx interrupt. If there is still data map next entry.
	 */
	status = FUNC0(dev, FCINTSTAT);
	if (status & SSS_FCINTSTAT_BRDMAINT)
		err_dma_rx = FUNC4(dev);

	if (status & SSS_FCINTSTAT_BTDMAINT) {
		if (FUNC13(dev->sg_dst))
			tx_end = true;
		err_dma_tx = FUNC5(dev);
	}

	if (status & SSS_FCINTSTAT_HRDMAINT)
		err_dma_hx = FUNC6(dev);

	st_bits = status & (SSS_FCINTSTAT_BRDMAINT | SSS_FCINTSTAT_BTDMAINT |
				SSS_FCINTSTAT_HRDMAINT);
	/* clear DMA bits */
	FUNC1(dev, FCINTPEND, st_bits);

	/* clear HASH irq bits */
	if (status & (SSS_FCINTSTAT_HDONEINT | SSS_FCINTSTAT_HPARTINT)) {
		/* cannot have both HPART and HDONE */
		if (status & SSS_FCINTSTAT_HPARTINT)
			st_bits = SSS_HASH_STATUS_PARTIAL_DONE;

		if (status & SSS_FCINTSTAT_HDONEINT)
			st_bits = SSS_HASH_STATUS_MSG_DONE;

		FUNC12(HASH_FLAGS_OUTPUT_READY, &dev->hash_flags);
		FUNC7(dev, SSS_REG_HASH_STATUS, st_bits);
		hx_end = true;
		/* when DONE or PART, do not handle HASH DMA */
		err_dma_hx = 0;
	}

	if (err_dma_rx < 0) {
		err = err_dma_rx;
		goto error;
	}
	if (err_dma_tx < 0) {
		err = err_dma_tx;
		goto error;
	}

	if (tx_end) {
		FUNC11(dev);
		if (err_dma_hx == 1)
			FUNC8(dev, dev->hash_sg_iter);

		FUNC15(&dev->lock, flags);

		FUNC3(dev->req, 0);
		/* Device is still busy */
		FUNC16(&dev->tasklet);
	} else {
		/*
		 * Writing length of DMA block (either receiving or
		 * transmitting) will start the operation immediately, so this
		 * should be done at the end (even after clearing pending
		 * interrupts to not miss the interrupt).
		 */
		if (err_dma_tx == 1)
			FUNC10(dev, dev->sg_dst);
		if (err_dma_rx == 1)
			FUNC9(dev, dev->sg_src);
		if (err_dma_hx == 1)
			FUNC8(dev, dev->hash_sg_iter);

		FUNC15(&dev->lock, flags);
	}

	goto hash_irq_end;

error:
	FUNC11(dev);
	dev->busy = false;
	req = dev->req;
	if (err_dma_hx == 1)
		FUNC8(dev, dev->hash_sg_iter);

	FUNC15(&dev->lock, flags);
	FUNC3(req, err);

hash_irq_end:
	/*
	 * Note about else if:
	 *   when hash_sg_iter reaches end and its UPDATE op,
	 *   issue SSS_HASH_PAUSE and wait for HPART irq
	 */
	if (hx_end)
		FUNC16(&dev->hash_tasklet);
	else if (err_dma_hx == 2)
		FUNC7(dev, SSS_REG_HASH_CTRL_PAUSE,
			       SSS_HASH_PAUSE);

	return IRQ_HANDLED;
}