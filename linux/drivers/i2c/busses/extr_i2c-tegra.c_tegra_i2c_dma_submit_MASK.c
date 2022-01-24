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
struct tegra_i2c_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_phys; struct dma_chan* tx_dma_chan; struct dma_chan* rx_dma_chan; scalar_t__ msg_read; int /*<<< orphan*/  dma_complete; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {struct tegra_i2c_dev* callback_param; int /*<<< orphan*/  callback; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;

/* Variables and functions */
 int DMA_CTRL_ACK ; 
 int DMA_DEV_TO_MEM ; 
 int DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_chan*) ; 
 struct dma_async_tx_descriptor* FUNC3 (struct dma_chan*,int /*<<< orphan*/ ,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tegra_i2c_dma_complete ; 

__attribute__((used)) static int FUNC6(struct tegra_i2c_dev *i2c_dev, size_t len)
{
	struct dma_async_tx_descriptor *dma_desc;
	enum dma_transfer_direction dir;
	struct dma_chan *chan;

	FUNC0(i2c_dev->dev, "starting DMA for length: %zu\n", len);
	FUNC5(&i2c_dev->dma_complete);
	dir = i2c_dev->msg_read ? DMA_DEV_TO_MEM : DMA_MEM_TO_DEV;
	chan = i2c_dev->msg_read ? i2c_dev->rx_dma_chan : i2c_dev->tx_dma_chan;
	dma_desc = FUNC3(chan, i2c_dev->dma_phys,
					       len, dir, DMA_PREP_INTERRUPT |
					       DMA_CTRL_ACK);
	if (!dma_desc) {
		FUNC1(i2c_dev->dev, "failed to get DMA descriptor\n");
		return -EINVAL;
	}

	dma_desc->callback = tegra_i2c_dma_complete;
	dma_desc->callback_param = i2c_dev;
	FUNC4(dma_desc);
	FUNC2(chan);
	return 0;
}