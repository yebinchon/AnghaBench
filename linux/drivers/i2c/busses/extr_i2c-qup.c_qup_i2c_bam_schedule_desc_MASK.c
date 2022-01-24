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
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/ * start; } ;
struct TYPE_8__ {int sg_cnt; int /*<<< orphan*/ * sg; int /*<<< orphan*/  dma; TYPE_1__ tag; } ;
struct TYPE_6__ {int /*<<< orphan*/ * start; } ;
struct TYPE_7__ {int sg_cnt; int /*<<< orphan*/ * sg; int /*<<< orphan*/  dma; TYPE_2__ tag; } ;
struct qup_i2c_dev {int bus_err; TYPE_4__ brx; int /*<<< orphan*/  dev; TYPE_3__ btx; int /*<<< orphan*/  xfer; scalar_t__ qup_err; int /*<<< orphan*/  xfer_timeout; } ;
struct dma_async_tx_descriptor {struct qup_i2c_dev* callback_param; void* callback; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_PREP_FENCE ; 
 int DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int EIO ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  QUP_BAM_FLUSH_STOP ; 
 int /*<<< orphan*/  QUP_BAM_INPUT_EOT ; 
 int QUP_I2C_NACK_FLAG ; 
 int /*<<< orphan*/  QUP_RUN_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* qup_i2c_bam_cb ; 
 scalar_t__ FUNC7 (struct qup_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qup_i2c_dev*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct qup_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct qup_i2c_dev *qup)
{
	struct dma_async_tx_descriptor *txd, *rxd = NULL;
	int ret = 0;
	dma_cookie_t cookie_rx, cookie_tx;
	u32 len = 0;
	u32 tx_cnt = qup->btx.sg_cnt, rx_cnt = qup->brx.sg_cnt;

	/* schedule the EOT and FLUSH I2C tags */
	len = 1;
	if (rx_cnt) {
		qup->btx.tag.start[0] = QUP_BAM_INPUT_EOT;
		len++;

		/* scratch buf to read the BAM EOT FLUSH tags */
		ret = FUNC9(&qup->brx.sg[rx_cnt++],
				     &qup->brx.tag.start[0],
				     1, qup, DMA_FROM_DEVICE);
		if (ret)
			return ret;
	}

	qup->btx.tag.start[len - 1] = QUP_BAM_FLUSH_STOP;
	ret = FUNC9(&qup->btx.sg[tx_cnt++], &qup->btx.tag.start[0],
			     len, qup, DMA_TO_DEVICE);
	if (ret)
		return ret;

	txd = FUNC4(qup->btx.dma, qup->btx.sg, tx_cnt,
				      DMA_MEM_TO_DEV,
				      DMA_PREP_INTERRUPT | DMA_PREP_FENCE);
	if (!txd) {
		FUNC0(qup->dev, "failed to get tx desc\n");
		ret = -EINVAL;
		goto desc_err;
	}

	if (!rx_cnt) {
		txd->callback = qup_i2c_bam_cb;
		txd->callback_param = qup;
	}

	cookie_tx = FUNC5(txd);
	if (FUNC2(cookie_tx)) {
		ret = -EINVAL;
		goto desc_err;
	}

	FUNC1(qup->btx.dma);

	if (rx_cnt) {
		rxd = FUNC4(qup->brx.dma, qup->brx.sg,
					      rx_cnt, DMA_DEV_TO_MEM,
					      DMA_PREP_INTERRUPT);
		if (!rxd) {
			FUNC0(qup->dev, "failed to get rx desc\n");
			ret = -EINVAL;

			/* abort TX descriptors */
			FUNC6(qup->btx.dma);
			goto desc_err;
		}

		rxd->callback = qup_i2c_bam_cb;
		rxd->callback_param = qup;
		cookie_rx = FUNC5(rxd);
		if (FUNC2(cookie_rx)) {
			ret = -EINVAL;
			goto desc_err;
		}

		FUNC1(qup->brx.dma);
	}

	if (!FUNC11(&qup->xfer, qup->xfer_timeout)) {
		FUNC0(qup->dev, "normal trans timed out\n");
		ret = -ETIMEDOUT;
	}

	if (ret || qup->bus_err || qup->qup_err) {
		FUNC10(&qup->xfer);

		if (FUNC7(qup, QUP_RUN_STATE)) {
			FUNC0(qup->dev, "change to run state timed out");
			goto desc_err;
		}

		FUNC8(qup);

		/* wait for remaining interrupts to occur */
		if (!FUNC11(&qup->xfer, HZ))
			FUNC0(qup->dev, "flush timed out\n");

		ret =  (qup->bus_err & QUP_I2C_NACK_FLAG) ? -ENXIO : -EIO;
	}

desc_err:
	FUNC3(qup->dev, qup->btx.sg, tx_cnt, DMA_TO_DEVICE);

	if (rx_cnt)
		FUNC3(qup->dev, qup->brx.sg, rx_cnt,
			     DMA_FROM_DEVICE);

	return ret;
}