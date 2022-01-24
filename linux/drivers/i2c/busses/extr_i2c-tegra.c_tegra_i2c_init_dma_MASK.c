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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_i2c_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_phys; int /*<<< orphan*/ * dma_buf; int /*<<< orphan*/  dma_buf_size; struct dma_chan* tx_dma_chan; struct dma_chan* rx_dma_chan; TYPE_1__* hw; } ;
struct dma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  has_apb_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_TEGRA20_APB_DMA ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dma_chan*) ; 
 int FUNC2 (struct dma_chan*) ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct dma_chan* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_i2c_dev*) ; 

__attribute__((used)) static int FUNC8(struct tegra_i2c_dev *i2c_dev)
{
	struct dma_chan *chan;
	u32 *dma_buf;
	dma_addr_t dma_phys;
	int err;

	if (!i2c_dev->hw->has_apb_dma)
		return 0;

	if (!FUNC0(CONFIG_TEGRA20_APB_DMA)) {
		FUNC3(i2c_dev->dev, "Support for APB DMA not enabled!\n");
		return 0;
	}

	chan = FUNC6(i2c_dev->dev, "rx");
	if (FUNC1(chan)) {
		err = FUNC2(chan);
		goto err_out;
	}

	i2c_dev->rx_dma_chan = chan;

	chan = FUNC6(i2c_dev->dev, "tx");
	if (FUNC1(chan)) {
		err = FUNC2(chan);
		goto err_out;
	}

	i2c_dev->tx_dma_chan = chan;

	dma_buf = FUNC5(i2c_dev->dev, i2c_dev->dma_buf_size,
				     &dma_phys, GFP_KERNEL | __GFP_NOWARN);
	if (!dma_buf) {
		FUNC4(i2c_dev->dev, "failed to allocate the DMA buffer\n");
		err = -ENOMEM;
		goto err_out;
	}

	i2c_dev->dma_buf = dma_buf;
	i2c_dev->dma_phys = dma_phys;
	return 0;

err_out:
	FUNC7(i2c_dev);
	if (err != -EPROBE_DEFER) {
		FUNC4(i2c_dev->dev, "cannot use DMA: %d\n", err);
		FUNC4(i2c_dev->dev, "falling back to PIO\n");
		return 0;
	}

	return err;
}