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
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC2(struct dma_chan *c)
{
	/*
	 * Free pending descriptors not processed yet by hardware that have
	 * previously been submitted to the channel.
	 */
	FUNC1(c);

	/*
	 * However, the DMA engine doesn't provide any way to stop these
	 * descriptors being processed currently by hardware. The only way is
	 * to just waiting until these descriptors are all processed completely
	 * through mtk_hsdma_free_active_desc call.
	 */
	FUNC0(c);

	return 0;
}