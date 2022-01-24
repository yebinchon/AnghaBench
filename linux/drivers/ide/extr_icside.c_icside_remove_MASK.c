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
struct icside_state {int type; int /*<<< orphan*/  ioc_base; } ;
struct expansion_card {int /*<<< orphan*/  dma; } ;

/* Variables and functions */
#define  ICS_TYPE_V5 129 
#define  ICS_TYPE_V6 128 
 int /*<<< orphan*/  NO_DMA ; 
 struct icside_state* FUNC0 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct expansion_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct expansion_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct expansion_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct icside_state*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct expansion_card *ec)
{
	struct icside_state *state = FUNC0(ec);

	switch (state->type) {
	case ICS_TYPE_V5:
		/* FIXME: tell IDE to stop using the interface */

		/* Disable interrupts */
		FUNC4(ec, 0);
		break;

	case ICS_TYPE_V6:
		/* FIXME: tell IDE to stop using the interface */
		if (ec->dma != NO_DMA)
			FUNC3(ec->dma);

		/* Disable interrupts */
		FUNC5(ec, 0);

		/* Reset the ROM pointer/EASI selection */
		FUNC7(0, state->ioc_base);
		break;
	}

	FUNC2(ec, NULL);

	FUNC6(state);
	FUNC1(ec);
}