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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct sun6i_dma_dev {scalar_t__ base; TYPE_1__ slave; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ DMA_STAT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC4(struct sun6i_dma_dev *sdev)
{
	FUNC2(sdev->slave.dev, "Common register:\n"
		"\tmask0(%04x): 0x%08x\n"
		"\tmask1(%04x): 0x%08x\n"
		"\tpend0(%04x): 0x%08x\n"
		"\tpend1(%04x): 0x%08x\n"
		"\tstats(%04x): 0x%08x\n",
		FUNC0(0), FUNC3(sdev->base + FUNC0(0)),
		FUNC0(1), FUNC3(sdev->base + FUNC0(1)),
		FUNC1(0), FUNC3(sdev->base + FUNC1(0)),
		FUNC1(1), FUNC3(sdev->base + FUNC1(1)),
		DMA_STAT, FUNC3(sdev->base + DMA_STAT));
}