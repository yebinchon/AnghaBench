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
struct gnss_serial {struct gnss_device* gdev; struct serdev_device* serdev; } ;
struct gnss_device {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct gnss_serial* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct gnss_device* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gnss_device*) ; 
 int /*<<< orphan*/  gnss_serial_gnss_ops ; 
 int FUNC3 (struct serdev_device*) ; 
 int /*<<< orphan*/  gnss_serial_serdev_ops ; 
 int /*<<< orphan*/  FUNC4 (struct gnss_device*,struct gnss_serial*) ; 
 int /*<<< orphan*/  FUNC5 (struct gnss_serial*) ; 
 struct gnss_serial* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct serdev_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct serdev_device*,struct gnss_serial*) ; 

struct gnss_serial *FUNC9(struct serdev_device *serdev,
						size_t data_size)
{
	struct gnss_serial *gserial;
	struct gnss_device *gdev;
	int ret;

	gserial = FUNC6(sizeof(*gserial) + data_size, GFP_KERNEL);
	if (!gserial)
		return FUNC0(-ENOMEM);

	gdev = FUNC1(&serdev->dev);
	if (!gdev) {
		ret = -ENOMEM;
		goto err_free_gserial;
	}

	gdev->ops = &gnss_serial_gnss_ops;
	FUNC4(gdev, gserial);

	gserial->serdev = serdev;
	gserial->gdev = gdev;

	FUNC8(serdev, gserial);
	FUNC7(serdev, &gnss_serial_serdev_ops);

	ret = FUNC3(serdev);
	if (ret)
		goto err_put_device;

	return gserial;

err_put_device:
	FUNC2(gserial->gdev);
err_free_gserial:
	FUNC5(gserial);

	return FUNC0(ret);
}