#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {unsigned int count; } ;
struct tegra_bpmp {int /*<<< orphan*/ * threaded_channels; TYPE_6__* soc; TYPE_3__ threaded; int /*<<< orphan*/ * rx_channel; int /*<<< orphan*/ * tx_channel; struct tegra210_bpmp* priv; int /*<<< orphan*/  dev; } ;
struct tegra210_bpmp {int /*<<< orphan*/  tx_irq_data; void* arb_sema; void* atomics; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {unsigned int offset; } ;
struct TYPE_8__ {unsigned int offset; } ;
struct TYPE_7__ {unsigned int offset; } ;
struct TYPE_11__ {TYPE_4__ thread; TYPE_2__ cpu_rx; TYPE_1__ cpu_tx; } ;
struct TYPE_12__ {TYPE_5__ channels; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_NO_SUSPEND ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct tegra210_bpmp* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_bpmp*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct platform_device*,char*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rx_irq ; 
 int FUNC10 (int /*<<< orphan*/ *,struct tegra_bpmp*,unsigned int) ; 
 struct platform_device* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct tegra_bpmp *bpmp)
{
	struct platform_device *pdev = FUNC11(bpmp->dev);
	struct tegra210_bpmp *priv;
	struct resource *res;
	unsigned int i;
	int err;

	priv = FUNC5(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	bpmp->priv = priv;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	priv->atomics = FUNC4(&pdev->dev, res);
	if (FUNC0(priv->atomics))
		return FUNC1(priv->atomics);

	res = FUNC9(pdev, IORESOURCE_MEM, 1);
	priv->arb_sema = FUNC4(&pdev->dev, res);
	if (FUNC0(priv->arb_sema))
		return FUNC1(priv->arb_sema);

	err = FUNC10(bpmp->tx_channel, bpmp,
					 bpmp->soc->channels.cpu_tx.offset);
	if (err < 0)
		return err;

	err = FUNC10(bpmp->rx_channel, bpmp,
					 bpmp->soc->channels.cpu_rx.offset);
	if (err < 0)
		return err;

	for (i = 0; i < bpmp->threaded.count; i++) {
		unsigned int index = bpmp->soc->channels.thread.offset + i;

		err = FUNC10(&bpmp->threaded_channels[i],
						 bpmp, index);
		if (err < 0)
			return err;
	}

	err = FUNC8(pdev, "tx");
	if (err < 0) {
		FUNC2(&pdev->dev, "failed to get TX IRQ: %d\n", err);
		return err;
	}

	priv->tx_irq_data = FUNC7(err);
	if (!priv->tx_irq_data) {
		FUNC2(&pdev->dev, "failed to get IRQ data for TX IRQ\n");
		return err;
	}

	err = FUNC8(pdev, "rx");
	if (err < 0) {
		FUNC2(&pdev->dev, "failed to get rx IRQ: %d\n", err);
		return err;
	}

	err = FUNC6(&pdev->dev, err, rx_irq,
			       IRQF_NO_SUSPEND, FUNC3(&pdev->dev), bpmp);
	if (err < 0) {
		FUNC2(&pdev->dev, "failed to request IRQ: %d\n", err);
		return err;
	}

	return 0;
}