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
struct sun6i_pchan {scalar_t__ base; int /*<<< orphan*/  idx; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct sun6i_dma_dev {TYPE_1__ slave; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 scalar_t__ DMA_CHAN_CUR_CFG ; 
 scalar_t__ DMA_CHAN_CUR_CNT ; 
 scalar_t__ DMA_CHAN_CUR_DST ; 
 scalar_t__ DMA_CHAN_CUR_PARA ; 
 scalar_t__ DMA_CHAN_CUR_SRC ; 
 scalar_t__ DMA_CHAN_ENABLE ; 
 scalar_t__ DMA_CHAN_LLI_ADDR ; 
 scalar_t__ DMA_CHAN_PAUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct sun6i_dma_dev *sdev,
					    struct sun6i_pchan *pchan)
{
	phys_addr_t reg = FUNC2(pchan->base);

	FUNC0(sdev->slave.dev, "Chan %d reg: %pa\n"
		"\t___en(%04x): \t0x%08x\n"
		"\tpause(%04x): \t0x%08x\n"
		"\tstart(%04x): \t0x%08x\n"
		"\t__cfg(%04x): \t0x%08x\n"
		"\t__src(%04x): \t0x%08x\n"
		"\t__dst(%04x): \t0x%08x\n"
		"\tcount(%04x): \t0x%08x\n"
		"\t_para(%04x): \t0x%08x\n\n",
		pchan->idx, &reg,
		DMA_CHAN_ENABLE,
		FUNC1(pchan->base + DMA_CHAN_ENABLE),
		DMA_CHAN_PAUSE,
		FUNC1(pchan->base + DMA_CHAN_PAUSE),
		DMA_CHAN_LLI_ADDR,
		FUNC1(pchan->base + DMA_CHAN_LLI_ADDR),
		DMA_CHAN_CUR_CFG,
		FUNC1(pchan->base + DMA_CHAN_CUR_CFG),
		DMA_CHAN_CUR_SRC,
		FUNC1(pchan->base + DMA_CHAN_CUR_SRC),
		DMA_CHAN_CUR_DST,
		FUNC1(pchan->base + DMA_CHAN_CUR_DST),
		DMA_CHAN_CUR_CNT,
		FUNC1(pchan->base + DMA_CHAN_CUR_CNT),
		DMA_CHAN_CUR_PARA,
		FUNC1(pchan->base + DMA_CHAN_CUR_PARA));
}