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
typedef  int /*<<< orphan*/  u64 ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_AP_ARM_SDEI_STARTING ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  sdei_cpuhp_down ; 
 int /*<<< orphan*/  sdei_cpuhp_up ; 
 int /*<<< orphan*/  sdei_entry_point ; 
 int /*<<< orphan*/  sdei_firmware_call ; 
 int FUNC12 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  sdei_pm_nb ; 
 int /*<<< orphan*/  sdei_reboot_nb ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	int err;
	u64 ver = 0;
	int conduit;

	conduit = FUNC12(pdev);
	if (!sdei_firmware_call)
		return 0;

	err = FUNC10(&ver);
	if (err == -EOPNOTSUPP)
		FUNC6("advertised but not implemented in platform firmware\n");
	if (err) {
		FUNC6("Failed to get SDEI version: %d\n", err);
		FUNC13();
		return err;
	}

	FUNC7("SDEIv%d.%d (0x%x) detected in firmware.\n",
		(int)FUNC0(ver), (int)FUNC1(ver),
		(int)FUNC2(ver));

	if (FUNC0(ver) != 1) {
		FUNC8("Conflicting SDEI version detected.\n");
		FUNC13();
		return -EINVAL;
	}

	err = FUNC14();
	if (err)
		return err;

	sdei_entry_point = FUNC11(conduit);
	if (!sdei_entry_point) {
		/* Not supported due to hardware or boot configuration */
		FUNC13();
		return 0;
	}

	err = FUNC3(&sdei_pm_nb);
	if (err) {
		FUNC8("Failed to register CPU PM notifier...\n");
		goto error;
	}

	err = FUNC9(&sdei_reboot_nb);
	if (err) {
		FUNC8("Failed to register reboot notifier...\n");
		goto remove_cpupm;
	}

	err = FUNC5(CPUHP_AP_ARM_SDEI_STARTING, "SDEI",
				&sdei_cpuhp_up, &sdei_cpuhp_down);
	if (err) {
		FUNC8("Failed to register CPU hotplug notifier...\n");
		goto remove_reboot;
	}

	return 0;

remove_reboot:
	FUNC15(&sdei_reboot_nb);

remove_cpupm:
	FUNC4(&sdei_pm_nb);

error:
	FUNC13();
	return err;
}