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
struct intel_runtime_pm {int /*<<< orphan*/  available; struct device* kdev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPM_FLAG_NEVER_SKIP ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 

void FUNC8(struct intel_runtime_pm *rpm)
{
	struct device *kdev = rpm->kdev;

	/*
	 * Disable the system suspend direct complete optimization, which can
	 * leave the device suspended skipping the driver's suspend handlers
	 * if the device was already runtime suspended. This is needed due to
	 * the difference in our runtime and system suspend sequence and
	 * becaue the HDA driver may require us to enable the audio power
	 * domain during system suspend.
	 */
	FUNC1(kdev, DPM_FLAG_NEVER_SKIP);

	FUNC6(kdev, 10000); /* 10s */
	FUNC4(kdev);

	/*
	 * Take a permanent reference to disable the RPM functionality and drop
	 * it only when unloading the driver. Use the low level get/put helpers,
	 * so the driver's own RPM reference tracking asserts also work on
	 * platforms without RPM support.
	 */
	if (!rpm->available) {
		int ret;

		FUNC2(kdev);
		ret = FUNC3(kdev);
		FUNC0(ret < 0, "pm_runtime_get_sync() failed: %d\n", ret);
	} else {
		FUNC7(kdev);
	}

	/*
	 * The core calls the driver load handler with an RPM reference held.
	 * We drop that here and will reacquire it during unloading in
	 * intel_power_domains_fini().
	 */
	FUNC5(kdev);
}