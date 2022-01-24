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
struct serdev_device {int /*<<< orphan*/  dev; } ;
struct gnss_serial {int /*<<< orphan*/  gdev; struct serdev_device* serdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PM ; 
 int /*<<< orphan*/  GNSS_SERIAL_ACTIVE ; 
 int /*<<< orphan*/  GNSS_SERIAL_OFF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gnss_serial*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct gnss_serial *gserial)
{
	struct serdev_device *serdev = gserial->serdev;
	int ret;

	if (FUNC0(CONFIG_PM)) {
		FUNC4(&serdev->dev);
	} else {
		ret = FUNC2(gserial, GNSS_SERIAL_ACTIVE);
		if (ret < 0)
			return ret;
	}

	ret = FUNC1(gserial->gdev);
	if (ret)
		goto err_disable_rpm;

	return 0;

err_disable_rpm:
	if (FUNC0(CONFIG_PM))
		FUNC3(&serdev->dev);
	else
		FUNC2(gserial, GNSS_SERIAL_OFF);

	return ret;
}