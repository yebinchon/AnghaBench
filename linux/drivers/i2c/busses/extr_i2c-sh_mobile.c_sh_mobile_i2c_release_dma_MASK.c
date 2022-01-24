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
struct sh_mobile_i2c_data {void* dma_rx; void* dma_tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static void FUNC3(struct sh_mobile_i2c_data *pd)
{
	if (!FUNC1(pd->dma_tx)) {
		FUNC2(pd->dma_tx);
		pd->dma_tx = FUNC0(-EPROBE_DEFER);
	}

	if (!FUNC1(pd->dma_rx)) {
		FUNC2(pd->dma_rx);
		pd->dma_rx = FUNC0(-EPROBE_DEFER);
	}
}