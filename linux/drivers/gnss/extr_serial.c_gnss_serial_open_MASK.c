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
struct gnss_serial {int /*<<< orphan*/  speed; struct serdev_device* serdev; } ;
struct gnss_device {int dummy; } ;

/* Variables and functions */
 struct gnss_serial* FUNC0 (struct gnss_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct serdev_device*) ; 
 int FUNC4 (struct serdev_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct serdev_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct serdev_device*,int) ; 

__attribute__((used)) static int FUNC7(struct gnss_device *gdev)
{
	struct gnss_serial *gserial = FUNC0(gdev);
	struct serdev_device *serdev = gserial->serdev;
	int ret;

	ret = FUNC4(serdev);
	if (ret)
		return ret;

	FUNC5(serdev, gserial->speed);
	FUNC6(serdev, false);

	ret = FUNC1(&serdev->dev);
	if (ret < 0) {
		FUNC2(&serdev->dev);
		goto err_close;
	}

	return 0;

err_close:
	FUNC3(serdev);

	return ret;
}