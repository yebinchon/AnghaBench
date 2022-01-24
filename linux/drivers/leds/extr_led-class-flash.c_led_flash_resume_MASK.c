#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  val; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; } ;
struct led_classdev_flash {TYPE_2__ timeout; TYPE_1__ brightness; } ;
struct led_classdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct led_classdev_flash*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flash_brightness_set ; 
 struct led_classdev_flash* FUNC1 (struct led_classdev*) ; 
 int /*<<< orphan*/  timeout_set ; 

__attribute__((used)) static void FUNC2(struct led_classdev *led_cdev)
{
	struct led_classdev_flash *fled_cdev = FUNC1(led_cdev);

	FUNC0(fled_cdev, flash_brightness_set,
					fled_cdev->brightness.val);
	FUNC0(fled_cdev, timeout_set, fled_cdev->timeout.val);
}