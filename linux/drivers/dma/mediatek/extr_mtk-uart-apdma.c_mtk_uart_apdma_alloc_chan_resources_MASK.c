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
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct mtk_uart_apdmadev {scalar_t__ support_33bits; TYPE_1__ ddev; } ;
struct mtk_chan {int /*<<< orphan*/  irq; scalar_t__ base; } ;
struct dma_chan {TYPE_2__* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IRQF_TRIGGER_NONE ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  VFF_4G_SUPPORT ; 
 int /*<<< orphan*/  VFF_4G_SUPPORT_CLR_B ; 
 int /*<<< orphan*/  VFF_ADDR ; 
 scalar_t__ VFF_EN ; 
 int /*<<< orphan*/  VFF_LEN ; 
 int /*<<< orphan*/  VFF_RST ; 
 int /*<<< orphan*/  VFF_THRE ; 
 int /*<<< orphan*/  VFF_WARM_RST_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mtk_uart_apdma_irq_handler ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  readl ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_chan*) ; 
 struct mtk_chan* FUNC6 (struct dma_chan*) ; 
 struct mtk_uart_apdmadev* FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(struct dma_chan *chan)
{
	struct mtk_uart_apdmadev *mtkd = FUNC7(chan->device);
	struct mtk_chan *c = FUNC6(chan);
	unsigned int status;
	int ret;

	ret = FUNC2(mtkd->ddev.dev);
	if (ret < 0) {
		FUNC3(chan->device->dev);
		return ret;
	}

	FUNC1(c, VFF_ADDR, 0);
	FUNC1(c, VFF_THRE, 0);
	FUNC1(c, VFF_LEN, 0);
	FUNC1(c, VFF_RST, VFF_WARM_RST_B);

	ret = FUNC4(readl, c->base + VFF_EN,
			  status, !status, 10, 100);
	if (ret)
		return ret;

	ret = FUNC5(c->irq, mtk_uart_apdma_irq_handler,
			  IRQF_TRIGGER_NONE, KBUILD_MODNAME, chan);
	if (ret < 0) {
		FUNC0(chan->device->dev, "Can't request dma IRQ\n");
		return -EINVAL;
	}

	if (mtkd->support_33bits)
		FUNC1(c, VFF_4G_SUPPORT, VFF_4G_SUPPORT_CLR_B);

	return ret;
}