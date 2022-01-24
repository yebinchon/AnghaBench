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
typedef  int u32 ;
struct stm32_mdma_device {scalar_t__ base; struct stm32_mdma_chan* chan; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct stm32_mdma_chan {int id; TYPE_2__ vchan; TYPE_1__* desc; int /*<<< orphan*/  curr_hwdesc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  vdesc; int /*<<< orphan*/  count; int /*<<< orphan*/  cyclic; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int STM32_MDMA_CCR_IRQ_MASK ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  STM32_MDMA_CIFCR_CBRTIF ; 
 int /*<<< orphan*/  STM32_MDMA_CIFCR_CBTIF ; 
 int /*<<< orphan*/  STM32_MDMA_CIFCR_CCTCIF ; 
 int /*<<< orphan*/  STM32_MDMA_CIFCR_CLTCIF ; 
 int /*<<< orphan*/  STM32_MDMA_CIFCR_CTEIF ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
#define  STM32_MDMA_CISR_BRTIF 132 
#define  STM32_MDMA_CISR_BTIF 131 
#define  STM32_MDMA_CISR_CTCIF 130 
#define  STM32_MDMA_CISR_TCIF 129 
#define  STM32_MDMA_CISR_TEIF 128 
 scalar_t__ STM32_MDMA_GISR0 ; 
 scalar_t__ STM32_MDMA_GISR1 ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct stm32_mdma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (struct stm32_mdma_device*) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct stm32_mdma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct stm32_mdma_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct stm32_mdma_chan*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC16(int irq, void *devid)
{
	struct stm32_mdma_device *dmadev = devid;
	struct stm32_mdma_chan *chan = devid;
	u32 reg, id, ien, status, flag;

	/* Find out which channel generates the interrupt */
	status = FUNC9(dmadev->base + STM32_MDMA_GISR0);
	if (status) {
		id = FUNC4(status);
	} else {
		status = FUNC9(dmadev->base + STM32_MDMA_GISR1);
		if (!status) {
			FUNC6(FUNC8(dmadev), "spurious it\n");
			return IRQ_NONE;
		}
		id = FUNC4(status);
		/*
		 * As GISR0 provides status for channel id from 0 to 31,
		 * so GISR1 provides status for channel id from 32 to 62
		 */
		id += 32;
	}

	chan = &dmadev->chan[id];
	if (!chan) {
		FUNC6(FUNC8(dmadev), "MDMA channel not initialized\n");
		goto exit;
	}

	/* Handle interrupt for the channel */
	FUNC10(&chan->vchan.lock);
	status = FUNC12(dmadev, FUNC3(chan->id));
	ien = FUNC12(dmadev, FUNC0(chan->id));
	ien &= STM32_MDMA_CCR_IRQ_MASK;
	ien >>= 1;

	if (!(status & ien)) {
		FUNC11(&chan->vchan.lock);
		FUNC6(FUNC5(chan),
			"spurious it (status=0x%04x, ien=0x%04x)\n",
			status, ien);
		return IRQ_NONE;
	}

	flag = FUNC4(status & ien);
	reg = FUNC2(chan->id);

	switch (1 << flag) {
	case STM32_MDMA_CISR_TEIF:
		id = chan->id;
		status = FUNC9(dmadev->base + FUNC1(id));
		FUNC7(FUNC5(chan), "Transfer Err: stat=0x%08x\n", status);
		FUNC13(dmadev, reg, STM32_MDMA_CIFCR_CTEIF);
		break;

	case STM32_MDMA_CISR_CTCIF:
		FUNC13(dmadev, reg, STM32_MDMA_CIFCR_CCTCIF);
		FUNC14(chan);
		break;

	case STM32_MDMA_CISR_BRTIF:
		FUNC13(dmadev, reg, STM32_MDMA_CIFCR_CBRTIF);
		break;

	case STM32_MDMA_CISR_BTIF:
		FUNC13(dmadev, reg, STM32_MDMA_CIFCR_CBTIF);
		chan->curr_hwdesc++;
		if (chan->desc && chan->desc->cyclic) {
			if (chan->curr_hwdesc == chan->desc->count)
				chan->curr_hwdesc = 0;
			FUNC15(&chan->desc->vdesc);
		}
		break;

	case STM32_MDMA_CISR_TCIF:
		FUNC13(dmadev, reg, STM32_MDMA_CIFCR_CLTCIF);
		break;

	default:
		FUNC7(FUNC5(chan), "it %d unhandled (status=0x%04x)\n",
			1 << flag, status);
	}

	FUNC11(&chan->vchan.lock);

exit:
	return IRQ_HANDLED;
}