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
struct TYPE_4__ {int /*<<< orphan*/  tx_submit; int /*<<< orphan*/  flags; } ;
struct ep93xx_dma_desc {TYPE_2__ txd; int /*<<< orphan*/  tx_list; } ;
struct ep93xx_dma_data {int port; scalar_t__ direction; char* name; } ;
struct ep93xx_dma_chan {int /*<<< orphan*/  clk; int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; TYPE_1__* edma; int /*<<< orphan*/  chan; } ;
struct dma_chan {struct ep93xx_dma_data* private; } ;
struct TYPE_3__ {int (* hw_setup ) (struct ep93xx_dma_chan*) ;int /*<<< orphan*/  m2m; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CTRL_ACK ; 
 int DMA_MAX_CHAN_DESCRIPTORS ; 
 int EINVAL ; 
 int EP93XX_DMA_I2S1 ; 
#define  EP93XX_DMA_IDE 129 
 int EP93XX_DMA_IRDA ; 
#define  EP93XX_DMA_SSP 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct dma_chan*) ; 
 char* FUNC6 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC9 (struct ep93xx_dma_chan*,struct ep93xx_dma_desc*) ; 
 int /*<<< orphan*/  ep93xx_dma_interrupt ; 
 int /*<<< orphan*/  ep93xx_dma_tx_submit ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 struct ep93xx_dma_desc* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct ep93xx_dma_chan*) ; 
 struct ep93xx_dma_chan* FUNC17 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC18(struct dma_chan *chan)
{
	struct ep93xx_dma_chan *edmac = FUNC17(chan);
	struct ep93xx_dma_data *data = chan->private;
	const char *name = FUNC6(chan);
	int ret, i;

	/* Sanity check the channel parameters */
	if (!edmac->edma->m2m) {
		if (!data)
			return -EINVAL;
		if (data->port < EP93XX_DMA_I2S1 ||
		    data->port > EP93XX_DMA_IRDA)
			return -EINVAL;
		if (data->direction != FUNC8(chan))
			return -EINVAL;
	} else {
		if (data) {
			switch (data->port) {
			case EP93XX_DMA_SSP:
			case EP93XX_DMA_IDE:
				if (!FUNC11(data->direction))
					return -EINVAL;
				break;
			default:
				return -EINVAL;
			}
		}
	}

	if (data && data->name)
		name = data->name;

	ret = FUNC3(edmac->clk);
	if (ret)
		return ret;

	ret = FUNC13(edmac->irq, ep93xx_dma_interrupt, 0, name, edmac);
	if (ret)
		goto fail_clk_disable;

	FUNC14(&edmac->lock);
	FUNC7(&edmac->chan);
	ret = edmac->edma->hw_setup(edmac);
	FUNC15(&edmac->lock);

	if (ret)
		goto fail_free_irq;

	for (i = 0; i < DMA_MAX_CHAN_DESCRIPTORS; i++) {
		struct ep93xx_dma_desc *desc;

		desc = FUNC12(sizeof(*desc), GFP_KERNEL);
		if (!desc) {
			FUNC4(FUNC1(edmac), "not enough descriptors\n");
			break;
		}

		FUNC0(&desc->tx_list);

		FUNC5(&desc->txd, chan);
		desc->txd.flags = DMA_CTRL_ACK;
		desc->txd.tx_submit = ep93xx_dma_tx_submit;

		FUNC9(edmac, desc);
	}

	return i;

fail_free_irq:
	FUNC10(edmac->irq, edmac);
fail_clk_disable:
	FUNC2(edmac->clk);

	return ret;
}