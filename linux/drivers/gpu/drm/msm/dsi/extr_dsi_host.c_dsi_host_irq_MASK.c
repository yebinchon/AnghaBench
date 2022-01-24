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
typedef  int u32 ;
struct msm_dsi_host {int /*<<< orphan*/  dma_comp; int /*<<< orphan*/  video_comp; int /*<<< orphan*/  id; int /*<<< orphan*/  intr_lock; int /*<<< orphan*/  ctrl_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int DSI_IRQ_CMD_DMA_DONE ; 
 int DSI_IRQ_ERROR ; 
 int DSI_IRQ_VIDEO_DONE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  REG_DSI_INTR_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_dsi_host*) ; 
 int FUNC3 (struct msm_dsi_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_dsi_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *ptr)
{
	struct msm_dsi_host *msm_host = ptr;
	u32 isr;
	unsigned long flags;

	if (!msm_host->ctrl_base)
		return IRQ_HANDLED;

	FUNC5(&msm_host->intr_lock, flags);
	isr = FUNC3(msm_host, REG_DSI_INTR_CTRL);
	FUNC4(msm_host, REG_DSI_INTR_CTRL, isr);
	FUNC6(&msm_host->intr_lock, flags);

	FUNC0("isr=0x%x, id=%d", isr, msm_host->id);

	if (isr & DSI_IRQ_ERROR)
		FUNC2(msm_host);

	if (isr & DSI_IRQ_VIDEO_DONE)
		FUNC1(&msm_host->video_comp);

	if (isr & DSI_IRQ_CMD_DMA_DONE)
		FUNC1(&msm_host->dma_comp);

	return IRQ_HANDLED;
}