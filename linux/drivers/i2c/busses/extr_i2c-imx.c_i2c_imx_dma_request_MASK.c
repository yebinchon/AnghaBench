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
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct imx_i2c_struct {struct imx_i2c_dma* dma; TYPE_2__* hwdata; TYPE_1__ adapter; } ;
struct imx_i2c_dma {void* chan_tx; void* chan_rx; int /*<<< orphan*/  cmd_complete; } ;
struct dma_slave_config {int dst_maxburst; int src_maxburst; int /*<<< orphan*/  direction; void* src_addr_width; void* src_addr; void* dst_addr_width; void* dst_addr; } ;
typedef  void* dma_addr_t ;
struct TYPE_4__ {int regshift; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 void* DMA_SLAVE_BUSWIDTH_1_BYTE ; 
 int ENODEV ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IMX_I2C_I2DR ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct imx_i2c_dma*) ; 
 struct imx_i2c_dma* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 void* FUNC8 (struct device*,char*) ; 
 int FUNC9 (void*,struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct imx_i2c_struct *i2c_imx,
						dma_addr_t phy_addr)
{
	struct imx_i2c_dma *dma;
	struct dma_slave_config dma_sconfig;
	struct device *dev = &i2c_imx->adapter.dev;
	int ret;

	dma = FUNC5(dev, sizeof(*dma), GFP_KERNEL);
	if (!dma)
		return;

	dma->chan_tx = FUNC8(dev, "tx");
	if (FUNC0(dma->chan_tx)) {
		ret = FUNC1(dma->chan_tx);
		if (ret != -ENODEV && ret != -EPROBE_DEFER)
			FUNC2(dev, "can't request DMA tx channel (%d)\n", ret);
		goto fail_al;
	}

	dma_sconfig.dst_addr = phy_addr +
				(IMX_I2C_I2DR << i2c_imx->hwdata->regshift);
	dma_sconfig.dst_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
	dma_sconfig.dst_maxburst = 1;
	dma_sconfig.direction = DMA_MEM_TO_DEV;
	ret = FUNC9(dma->chan_tx, &dma_sconfig);
	if (ret < 0) {
		FUNC2(dev, "can't configure tx channel (%d)\n", ret);
		goto fail_tx;
	}

	dma->chan_rx = FUNC8(dev, "rx");
	if (FUNC0(dma->chan_rx)) {
		ret = FUNC1(dma->chan_rx);
		if (ret != -ENODEV && ret != -EPROBE_DEFER)
			FUNC2(dev, "can't request DMA rx channel (%d)\n", ret);
		goto fail_tx;
	}

	dma_sconfig.src_addr = phy_addr +
				(IMX_I2C_I2DR << i2c_imx->hwdata->regshift);
	dma_sconfig.src_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
	dma_sconfig.src_maxburst = 1;
	dma_sconfig.direction = DMA_DEV_TO_MEM;
	ret = FUNC9(dma->chan_rx, &dma_sconfig);
	if (ret < 0) {
		FUNC2(dev, "can't configure rx channel (%d)\n", ret);
		goto fail_rx;
	}

	i2c_imx->dma = dma;
	FUNC10(&dma->cmd_complete);
	FUNC3(dev, "using %s (tx) and %s (rx) for DMA transfers\n",
		FUNC6(dma->chan_tx), FUNC6(dma->chan_rx));

	return;

fail_rx:
	FUNC7(dma->chan_rx);
fail_tx:
	FUNC7(dma->chan_tx);
fail_al:
	FUNC4(dev, dma);
}