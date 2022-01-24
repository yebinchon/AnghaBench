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
struct tegra_dma_channel {scalar_t__ slave_id; int config_init; int /*<<< orphan*/  dma_sconfig; int /*<<< orphan*/  pending_sg_req; } ;
struct dma_slave_config {scalar_t__ slave_id; scalar_t__ device_fc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ TEGRA_APBDMA_CSR_REQ_SEL_MASK ; 
 scalar_t__ TEGRA_APBDMA_SLAVE_ID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct dma_slave_config*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_dma_channel*) ; 
 struct tegra_dma_channel* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC5(struct dma_chan *dc,
		struct dma_slave_config *sconfig)
{
	struct tegra_dma_channel *tdc = FUNC4(dc);

	if (!FUNC1(&tdc->pending_sg_req)) {
		FUNC0(FUNC3(tdc), "Configuration not allowed\n");
		return -EBUSY;
	}

	FUNC2(&tdc->dma_sconfig, sconfig, sizeof(*sconfig));
	if (tdc->slave_id == TEGRA_APBDMA_SLAVE_ID_INVALID &&
	    sconfig->device_fc) {
		if (sconfig->slave_id > TEGRA_APBDMA_CSR_REQ_SEL_MASK)
			return -EINVAL;
		tdc->slave_id = sconfig->slave_id;
	}
	tdc->config_init = true;
	return 0;
}