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
struct gnss_serial {struct serdev_device* serdev; } ;
struct gnss_device {int dummy; } ;

/* Variables and functions */
 struct gnss_serial* FUNC0 (struct gnss_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct serdev_device*) ; 

__attribute__((used)) static void FUNC3(struct gnss_device *gdev)
{
	struct gnss_serial *gserial = FUNC0(gdev);
	struct serdev_device *serdev = gserial->serdev;

	FUNC2(serdev);

	FUNC1(&serdev->dev);
}