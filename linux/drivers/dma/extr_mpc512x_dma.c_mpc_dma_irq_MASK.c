#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
struct TYPE_3__ {int chancnt; } ;
struct mpc_dma {int error_status; int /*<<< orphan*/  tasklet; TYPE_2__* regs; TYPE_1__ dma; int /*<<< orphan*/  error_status_lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  dmaerrl; int /*<<< orphan*/  dmaintl; int /*<<< orphan*/  dmaerrh; int /*<<< orphan*/  dmainth; int /*<<< orphan*/  dmaes; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MPC_DMA_DMAES_VLD ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mpc_dma*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct mpc_dma *mdma = data;
	uint es;

	/* Save error status register */
	es = FUNC0(&mdma->regs->dmaes);
	FUNC2(&mdma->error_status_lock);
	if ((es & MPC_DMA_DMAES_VLD) && mdma->error_status == 0)
		mdma->error_status = es;
	FUNC3(&mdma->error_status_lock);

	/* Handle interrupt on each channel */
	if (mdma->dma.chancnt > 32) {
		FUNC1(mdma, FUNC0(&mdma->regs->dmainth),
					FUNC0(&mdma->regs->dmaerrh), 32);
	}
	FUNC1(mdma, FUNC0(&mdma->regs->dmaintl),
					FUNC0(&mdma->regs->dmaerrl), 0);

	/* Schedule tasklet */
	FUNC4(&mdma->tasklet);

	return IRQ_HANDLED;
}