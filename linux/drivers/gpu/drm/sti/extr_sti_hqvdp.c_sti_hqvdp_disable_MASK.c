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
struct TYPE_2__ {int /*<<< orphan*/  status; } ;
struct sti_hqvdp {int vtg_registered; TYPE_1__ plane; int /*<<< orphan*/  clk_pix_main; scalar_t__ regs; int /*<<< orphan*/  vtg_nb; int /*<<< orphan*/  vtg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ HQVDP_MBX_INFO_XP70 ; 
 scalar_t__ HQVDP_MBX_NEXT_CMD ; 
 int INFO_XP70_FW_READY ; 
 int /*<<< orphan*/  POLL_DELAY_MS ; 
 int POLL_MAX_ATTEMPT ; 
 int /*<<< orphan*/  STI_PLANE_DISABLED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct sti_hqvdp *hqvdp)
{
	int i;

	FUNC0("%s\n", FUNC5(&hqvdp->plane));

	/* Unregister VTG Vsync callback */
	if (FUNC6(hqvdp->vtg, &hqvdp->vtg_nb))
		FUNC0("Warning: cannot unregister VTG notifier\n");

	/* Set next cmd to NULL */
	FUNC7(0, hqvdp->regs + HQVDP_MBX_NEXT_CMD);

	for (i = 0; i < POLL_MAX_ATTEMPT; i++) {
		if (FUNC4(hqvdp->regs + HQVDP_MBX_INFO_XP70)
				& INFO_XP70_FW_READY)
			break;
		FUNC3(POLL_DELAY_MS);
	}

	/* VTG can stop now */
	FUNC2(hqvdp->clk_pix_main);

	if (i == POLL_MAX_ATTEMPT)
		FUNC1("XP70 could not revert to idle\n");

	hqvdp->plane.status = STI_PLANE_DISABLED;
	hqvdp->vtg_registered = false;
}