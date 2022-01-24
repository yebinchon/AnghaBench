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
struct led_trigger {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_led_trigger_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct led_trigger**) ; 
 struct led_trigger** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct led_trigger**) ; 
 int FUNC3 (struct led_trigger*) ; 

int FUNC4(struct device *dev,
			      struct led_trigger *trig)
{
	struct led_trigger **dr;
	int rc;

	dr = FUNC1(devm_led_trigger_release, sizeof(*dr),
			  GFP_KERNEL);
	if (!dr)
		return -ENOMEM;

	*dr = trig;

	rc = FUNC3(trig);
	if (rc)
		FUNC2(dr);
	else
		FUNC0(dev, dr);

	return rc;
}