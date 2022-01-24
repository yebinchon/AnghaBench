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
struct TYPE_2__ {int /*<<< orphan*/  chan; } ;
struct tegra_adma_chan {TYPE_1__ vc; int /*<<< orphan*/  irq; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tegra_adma_chan*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_adma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_adma_chan*) ; 
 int /*<<< orphan*/  tegra_adma_isr ; 
 struct tegra_adma_chan* FUNC7 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC8(struct dma_chan *dc)
{
	struct tegra_adma_chan *tdc = FUNC7(dc);
	int ret;

	ret = FUNC5(tdc->irq, tegra_adma_isr, 0, FUNC1(dc), tdc);
	if (ret) {
		FUNC0(FUNC6(tdc), "failed to get interrupt for %s\n",
			FUNC1(dc));
		return ret;
	}

	ret = FUNC4(FUNC6(tdc));
	if (ret < 0) {
		FUNC3(tdc->irq, tdc);
		return ret;
	}

	FUNC2(&tdc->vc.chan);

	return 0;
}