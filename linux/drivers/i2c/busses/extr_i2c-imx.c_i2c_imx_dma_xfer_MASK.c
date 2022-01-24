#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;
struct imx_i2c_struct {TYPE_1__ adapter; struct imx_i2c_dma* dma; } ;
struct imx_i2c_dma {int /*<<< orphan*/  dma_data_dir; int /*<<< orphan*/  dma_len; int /*<<< orphan*/  dma_buf; TYPE_3__* chan_using; int /*<<< orphan*/  cmd_complete; int /*<<< orphan*/  dma_transfer_dir; } ;
struct i2c_msg {int /*<<< orphan*/  buf; } ;
struct dma_async_tx_descriptor {struct imx_i2c_struct* callback_param; int /*<<< orphan*/  callback; } ;
struct TYPE_8__ {TYPE_2__* device; } ;
struct TYPE_7__ {struct device* dev; } ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int DMA_PREP_INTERRUPT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  i2c_imx_dma_callback ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct imx_i2c_struct *i2c_imx,
					struct i2c_msg *msgs)
{
	struct imx_i2c_dma *dma = i2c_imx->dma;
	struct dma_async_tx_descriptor *txdesc;
	struct device *dev = &i2c_imx->adapter.dev;
	struct device *chan_dev = dma->chan_using->device->dev;

	dma->dma_buf = FUNC2(chan_dev, msgs->buf,
					dma->dma_len, dma->dma_data_dir);
	if (FUNC3(chan_dev, dma->dma_buf)) {
		FUNC0(dev, "DMA mapping failed\n");
		goto err_map;
	}

	txdesc = FUNC6(dma->chan_using, dma->dma_buf,
					dma->dma_len, dma->dma_transfer_dir,
					DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
	if (!txdesc) {
		FUNC0(dev, "Not able to get desc for DMA xfer\n");
		goto err_desc;
	}

	FUNC9(&dma->cmd_complete);
	txdesc->callback = i2c_imx_dma_callback;
	txdesc->callback_param = i2c_imx;
	if (FUNC4(FUNC7(txdesc))) {
		FUNC0(dev, "DMA submit failed\n");
		goto err_submit;
	}

	FUNC1(dma->chan_using);
	return 0;

err_submit:
	FUNC8(dma->chan_using);
err_desc:
	FUNC5(chan_dev, dma->dma_buf,
			dma->dma_len, dma->dma_data_dir);
err_map:
	return -EINVAL;
}