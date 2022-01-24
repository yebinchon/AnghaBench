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
struct dma_device {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_SLAVE ; 
 scalar_t__ FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_list_mutex ; 
 struct dma_chan* FUNC3 (struct dma_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct dma_chan *FUNC6(struct dma_device *device)
{
	dma_cap_mask_t mask;
	struct dma_chan *chan;

	FUNC2(mask);
	FUNC1(DMA_SLAVE, mask);

	/* lock against __dma_request_channel */
	FUNC4(&dma_list_mutex);

	chan = FUNC3(device, &mask, NULL, NULL);

	FUNC5(&dma_list_mutex);

	return FUNC0(chan) ? NULL : chan;
}