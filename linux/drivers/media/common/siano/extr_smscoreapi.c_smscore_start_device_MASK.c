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
struct smscore_device_t {int /*<<< orphan*/  device; int /*<<< orphan*/  devpath; } ;
struct TYPE_2__ {int default_mode; } ;

/* Variables and functions */
 int DEVICE_MODE_NONE ; 
 int SMS_BOARD_UNKNOWN ; 
 int /*<<< orphan*/  g_smscore_deviceslock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct smscore_device_t*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 TYPE_1__* FUNC4 (int) ; 
 int FUNC5 (struct smscore_device_t*) ; 
 int FUNC6 (struct smscore_device_t*) ; 
 int /*<<< orphan*/  FUNC7 (struct smscore_device_t*) ; 
 int FUNC8 (struct smscore_device_t*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct smscore_device_t*,int) ; 

int FUNC11(struct smscore_device_t *coredev)
{
	int rc;
	int board_id = FUNC6(coredev);
	int mode = FUNC9(coredev->devpath);

	/* Device is initialized as DEVICE_MODE_NONE */
	if (board_id != SMS_BOARD_UNKNOWN && mode == DEVICE_MODE_NONE)
		mode = FUNC4(board_id)->default_mode;

	rc = FUNC10(coredev, mode);
	if (rc < 0) {
		FUNC3("set device mode failed , rc %d\n", rc);
		return rc;
	}
	rc = FUNC5(coredev);
	if (rc < 0) {
		FUNC3("configure board failed , rc %d\n", rc);
		return rc;
	}

	FUNC0(&g_smscore_deviceslock);

	rc = FUNC8(coredev, coredev->device, 1);
	FUNC7(coredev);

	FUNC2("device %p started, rc %d\n", coredev, rc);

	FUNC1(&g_smscore_deviceslock);

	return rc;
}