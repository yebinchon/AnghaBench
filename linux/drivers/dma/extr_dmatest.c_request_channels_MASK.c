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
struct dmatest_params {scalar_t__ max_channels; } ;
struct dmatest_info {scalar_t__ nr_channels; struct dmatest_params params; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_transaction_type { ____Placeholder_dma_transaction_type } dma_transaction_type ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_chan*) ; 
 struct dma_chan* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dmatest_params*) ; 
 scalar_t__ FUNC4 (struct dmatest_info*,struct dma_chan*) ; 
 int /*<<< orphan*/  filter ; 

__attribute__((used)) static void FUNC5(struct dmatest_info *info,
			     enum dma_transaction_type type)
{
	dma_cap_mask_t mask;

	FUNC1(mask);
	FUNC0(type, mask);
	for (;;) {
		struct dmatest_params *params = &info->params;
		struct dma_chan *chan;

		chan = FUNC3(mask, filter, params);
		if (chan) {
			if (FUNC4(info, chan)) {
				FUNC2(chan);
				break; /* add_channel failed, punt */
			}
		} else
			break; /* no more channels available */
		if (params->max_channels &&
		    info->nr_channels >= params->max_channels)
			break; /* we have all we need */
	}
}