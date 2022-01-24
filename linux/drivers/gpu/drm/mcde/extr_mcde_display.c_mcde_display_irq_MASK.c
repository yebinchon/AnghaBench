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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  crtc; } ;
struct mcde {scalar_t__ flow_active; scalar_t__ regs; int /*<<< orphan*/  dev; TYPE_1__ pipe; int /*<<< orphan*/  flow_lock; scalar_t__ oneshot_mode; int /*<<< orphan*/  mdsi; } ;

/* Variables and functions */
 scalar_t__ MCDE_CRA0 ; 
 int MCDE_CRX0_FLOEN ; 
 scalar_t__ MCDE_MISCHNL ; 
 scalar_t__ MCDE_MISOVL ; 
 scalar_t__ MCDE_MISPP ; 
 int MCDE_PP_VCMPA ; 
 int MCDE_PP_VCMPB ; 
 int MCDE_PP_VCMPC0 ; 
 int MCDE_PP_VCMPC1 ; 
 int MCDE_PP_VSCC0 ; 
 int MCDE_PP_VSCC1 ; 
 scalar_t__ MCDE_RISCHNL ; 
 scalar_t__ MCDE_RISOVL ; 
 scalar_t__ MCDE_RISPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

void FUNC8(struct mcde *mcde)
{
	u32 mispp, misovl, mischnl;
	bool vblank = false;

	/* Handle display IRQs */
	mispp = FUNC4(mcde->regs + MCDE_MISPP);
	misovl = FUNC4(mcde->regs + MCDE_MISOVL);
	mischnl = FUNC4(mcde->regs + MCDE_MISCHNL);

	/*
	 * Handle IRQs from the DSI link. All IRQs from the DSI links
	 * are just latched onto the MCDE IRQ line, so we need to traverse
	 * any active DSI masters and check if an IRQ is originating from
	 * them.
	 *
	 * TODO: Currently only one DSI link is supported.
	 */
	if (FUNC3(mcde->mdsi)) {
		u32 val;

		/*
		 * In oneshot mode we do not send continuous updates
		 * to the display, instead we only push out updates when
		 * the update function is called, then we disable the
		 * flow on the channel once we get the TE IRQ.
		 */
		if (mcde->oneshot_mode) {
			FUNC5(&mcde->flow_lock);
			if (--mcde->flow_active == 0) {
				FUNC0(mcde->dev, "TE0 IRQ\n");
				/* Disable FIFO A flow */
				val = FUNC4(mcde->regs + MCDE_CRA0);
				val &= ~MCDE_CRX0_FLOEN;
				FUNC7(val, mcde->regs + MCDE_CRA0);
			}
			FUNC6(&mcde->flow_lock);
		}
	}

	/* Vblank from one of the channels */
	if (mispp & MCDE_PP_VCMPA) {
		FUNC0(mcde->dev, "chnl A vblank IRQ\n");
		vblank = true;
	}
	if (mispp & MCDE_PP_VCMPB) {
		FUNC0(mcde->dev, "chnl B vblank IRQ\n");
		vblank = true;
	}
	if (mispp & MCDE_PP_VCMPC0)
		FUNC0(mcde->dev, "chnl C0 vblank IRQ\n");
	if (mispp & MCDE_PP_VCMPC1)
		FUNC0(mcde->dev, "chnl C1 vblank IRQ\n");
	if (mispp & MCDE_PP_VSCC0)
		FUNC0(mcde->dev, "chnl C0 TE IRQ\n");
	if (mispp & MCDE_PP_VSCC1)
		FUNC0(mcde->dev, "chnl C1 TE IRQ\n");
	FUNC7(mispp, mcde->regs + MCDE_RISPP);

	if (vblank)
		FUNC2(&mcde->pipe.crtc);

	if (misovl)
		FUNC1(mcde->dev, "some stray overlay IRQ %08x\n", misovl);
	FUNC7(misovl, mcde->regs + MCDE_RISOVL);

	if (mischnl)
		FUNC1(mcde->dev, "some stray channel error IRQ %08x\n",
			 mischnl);
	FUNC7(mischnl, mcde->regs + MCDE_RISCHNL);
}