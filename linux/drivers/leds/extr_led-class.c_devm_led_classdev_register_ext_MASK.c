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
struct led_init_data {int dummy; } ;
struct led_classdev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_led_classdev_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct led_classdev**) ; 
 struct led_classdev** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct led_classdev**) ; 
 int FUNC3 (struct device*,struct led_classdev*,struct led_init_data*) ; 

int FUNC4(struct device *parent,
				   struct led_classdev *led_cdev,
				   struct led_init_data *init_data)
{
	struct led_classdev **dr;
	int rc;

	dr = FUNC1(devm_led_classdev_release, sizeof(*dr), GFP_KERNEL);
	if (!dr)
		return -ENOMEM;

	rc = FUNC3(parent, led_cdev, init_data);
	if (rc) {
		FUNC2(dr);
		return rc;
	}

	*dr = led_cdev;
	FUNC0(parent, dr);

	return 0;
}