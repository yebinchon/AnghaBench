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
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;
struct at_xdmac_chan {int /*<<< orphan*/  sconfig; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct dma_slave_config*,int) ; 
 struct at_xdmac_chan* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC5(struct dma_chan *chan,
				      struct dma_slave_config *sconfig)
{
	struct at_xdmac_chan	*atchan = FUNC4(chan);

	if (FUNC0(sconfig)) {
		FUNC2(FUNC1(chan), "invalid slave configuration\n");
		return -EINVAL;
	}

	FUNC3(&atchan->sconfig, sconfig, sizeof(atchan->sconfig));

	return 0;
}