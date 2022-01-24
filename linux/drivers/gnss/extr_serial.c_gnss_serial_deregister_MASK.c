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
 int /*<<< orphan*/  GNSS_SERIAL_OFF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gnss_serial*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct gnss_serial *gserial)
{
	struct serdev_device *serdev = gserial->serdev;

	FUNC1(gserial->gdev);

	if (FUNC0(CONFIG_PM))
		FUNC3(&serdev->dev);
	else
		FUNC2(gserial, GNSS_SERIAL_OFF);
}