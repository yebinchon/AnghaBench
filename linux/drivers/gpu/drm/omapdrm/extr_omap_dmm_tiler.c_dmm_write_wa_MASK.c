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
typedef  scalar_t__ u32 ;
struct dmm {scalar_t__ base; int /*<<< orphan*/  dev; scalar_t__ phys_base; scalar_t__ wa_dma_handle; scalar_t__ wa_dma_data; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct dmm*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct dmm *dmm, u32 val, u32 reg)
{
	dma_addr_t src, dst;
	int r;

	FUNC3(val, dmm->wa_dma_data);
	/*
	 * As per i878 workaround, the DMA is used to access the DMM registers.
	 * Make sure that the writel is not moved by the compiler or the CPU, so
	 * the data will be in place before we start the DMA to do the actual
	 * register write.
	 */
	FUNC2();

	src = dmm->wa_dma_handle;
	dst = dmm->phys_base + reg;

	r = FUNC1(dmm, src, dst);
	if (r) {
		FUNC0(dmm->dev, "sDMA write transfer timeout\n");
		FUNC3(val, dmm->base + reg);
	}
}