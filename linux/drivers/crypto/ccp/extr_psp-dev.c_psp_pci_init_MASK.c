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
struct sp_device {int /*<<< orphan*/  dev; TYPE_1__* psp_data; } ;
struct TYPE_2__ {scalar_t__ sev_state; int /*<<< orphan*/  build; int /*<<< orphan*/  api_minor; int /*<<< orphan*/  api_major; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ SEV_STATE_UNINIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* psp_master ; 
 int /*<<< orphan*/  psp_probe_timeout ; 
 int /*<<< orphan*/  psp_timeout ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct sp_device* FUNC7 () ; 

void FUNC8(void)
{
	struct sp_device *sp;
	int error, rc;

	sp = FUNC7();
	if (!sp)
		return;

	psp_master = sp->psp_data;

	psp_timeout = psp_probe_timeout;

	if (FUNC2())
		goto err;

	/*
	 * If platform is not in UNINIT state then firmware upgrade and/or
	 * platform INIT command will fail. These command require UNINIT state.
	 *
	 * In a normal boot we should never run into case where the firmware
	 * is not in UNINIT state on boot. But in case of kexec boot, a reboot
	 * may not go through a typical shutdown sequence and may leave the
	 * firmware in INIT or WORKING state.
	 */

	if (psp_master->sev_state != SEV_STATE_UNINIT) {
		FUNC4(NULL);
		psp_master->sev_state = SEV_STATE_UNINIT;
	}

	if (FUNC6(0, 15) &&
	    FUNC5(psp_master->dev) == 0)
		FUNC2();

	/* Initialize the platform */
	rc = FUNC3(&error);
	if (rc) {
		FUNC0(sp->dev, "SEV: failed to INIT error %#x\n", error);
		return;
	}

	FUNC1(sp->dev, "SEV API:%d.%d build:%d\n", psp_master->api_major,
		 psp_master->api_minor, psp_master->build);

	return;

err:
	psp_master = NULL;
}