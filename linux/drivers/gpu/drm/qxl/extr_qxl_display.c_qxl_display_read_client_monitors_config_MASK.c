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
struct drm_device {int dummy; } ;
struct qxl_device {struct drm_device ddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MONITORS_CONFIG_BAD_CRC ; 
 int MONITORS_CONFIG_ERROR ; 
 int MONITORS_CONFIG_UNCHANGED ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int FUNC5 (struct qxl_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct qxl_device*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(struct qxl_device *qdev)
{
	struct drm_device *dev = &qdev->ddev;
	int status, retries;

	for (retries = 0; retries < 10; retries++) {
		status = FUNC5(qdev);
		if (status != MONITORS_CONFIG_BAD_CRC)
			break;
		FUNC7(5);
	}
	if (status == MONITORS_CONFIG_ERROR) {
		FUNC0("ignoring client monitors config: error");
		return;
	}
	if (status == MONITORS_CONFIG_BAD_CRC) {
		FUNC0("ignoring client monitors config: bad crc");
		return;
	}
	if (status == MONITORS_CONFIG_UNCHANGED) {
		FUNC0("ignoring client monitors config: unchanged");
		return;
	}

	FUNC3(dev);
	FUNC6(qdev);
	FUNC4(dev);
	if (!FUNC1(dev)) {
		/* notify that the monitor configuration changed, to
		   adjust at the arbitrary resolution */
		FUNC2(dev);
	}
}