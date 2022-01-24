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
typedef  int /*<<< orphan*/  u32 ;
struct ep93xx_dma_data {int dummy; } ;
struct TYPE_2__ {struct ep93xx_dma_data* private; } ;
struct ep93xx_dma_chan {scalar_t__ regs; int /*<<< orphan*/  runtime_ctrl; TYPE_1__ chan; } ;

/* Variables and functions */
 scalar_t__ M2M_CONTROL ; 
 int /*<<< orphan*/  M2M_CONTROL_DONEINT ; 
 int /*<<< orphan*/  M2M_CONTROL_ENABLE ; 
 int /*<<< orphan*/  M2M_CONTROL_NFBINT ; 
 int /*<<< orphan*/  M2M_CONTROL_PW_MASK ; 
 int /*<<< orphan*/  M2M_CONTROL_START ; 
 scalar_t__ FUNC0 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct ep93xx_dma_chan *edmac)
{
	struct ep93xx_dma_data *data = edmac->chan.private;
	u32 control = FUNC2(edmac->regs + M2M_CONTROL);

	/*
	 * Since we allow clients to configure PW (peripheral width) we always
	 * clear PW bits here and then set them according what is given in
	 * the runtime configuration.
	 */
	control &= ~M2M_CONTROL_PW_MASK;
	control |= edmac->runtime_ctrl;

	FUNC1(edmac);
	control |= M2M_CONTROL_DONEINT;

	if (FUNC0(edmac)) {
		FUNC1(edmac);
		control |= M2M_CONTROL_NFBINT;
	}

	/*
	 * Now we can finally enable the channel. For M2M channel this must be
	 * done _after_ the BCRx registers are programmed.
	 */
	control |= M2M_CONTROL_ENABLE;
	FUNC3(control, edmac->regs + M2M_CONTROL);

	if (!data) {
		/*
		 * For memcpy channels the software trigger must be asserted
		 * in order to start the memcpy operation.
		 */
		control |= M2M_CONTROL_START;
		FUNC3(control, edmac->regs + M2M_CONTROL);
	}
}