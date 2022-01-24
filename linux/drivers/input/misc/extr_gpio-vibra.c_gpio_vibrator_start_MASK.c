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
struct gpio_vibrator {int vcc_on; int /*<<< orphan*/  gpio; int /*<<< orphan*/  vcc; TYPE_2__* input; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gpio_vibrator *vibrator)
{
	struct device *pdev = vibrator->input->dev.parent;
	int err;

	if (!vibrator->vcc_on) {
		err = FUNC2(vibrator->vcc);
		if (err) {
			FUNC0(pdev, "failed to enable regulator: %d\n", err);
			return err;
		}
		vibrator->vcc_on = true;
	}

	FUNC1(vibrator->gpio, 1);

	return 0;
}