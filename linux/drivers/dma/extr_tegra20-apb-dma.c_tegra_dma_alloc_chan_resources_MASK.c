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
struct tegra_dma_channel {int config_init; int /*<<< orphan*/  dma_chan; struct tegra_dma* tdma; } ;
struct tegra_dma {int /*<<< orphan*/  dev; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct tegra_dma_channel* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC3(struct dma_chan *dc)
{
	struct tegra_dma_channel *tdc = FUNC2(dc);
	struct tegra_dma *tdma = tdc->tdma;
	int ret;

	FUNC0(&tdc->dma_chan);
	tdc->config_init = false;

	ret = FUNC1(tdma->dev);
	if (ret < 0)
		return ret;

	return 0;
}