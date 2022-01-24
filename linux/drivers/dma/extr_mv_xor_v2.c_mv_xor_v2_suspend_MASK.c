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
struct platform_device {int dummy; } ;
struct mv_xor_v2_device {scalar_t__ dma_base; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 scalar_t__ MV_XOR_V2_DMA_DESQ_STOP_OFF ; 
 struct mv_xor_v2_device* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct platform_device *dev, pm_message_t state)
{
	struct mv_xor_v2_device *xor_dev = FUNC0(dev);

	/* Set this bit to disable to stop the XOR unit. */
	FUNC1(0x1, xor_dev->dma_base + MV_XOR_V2_DMA_DESQ_STOP_OFF);

	return 0;
}