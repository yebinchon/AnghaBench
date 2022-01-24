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
struct TYPE_2__ {int /*<<< orphan*/  ngpio; } ;
struct ucb1400_gpio {int (* gpio_teardown ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;TYPE_1__ gc; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct ucb1400_gpio* FUNC0 (struct platform_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct platform_device *dev)
{
	int err = 0;
	struct ucb1400_gpio *ucb = FUNC0(dev);

	if (ucb && ucb->gpio_teardown) {
		err = ucb->gpio_teardown(&dev->dev, ucb->gc.ngpio);
		if (err)
			return err;
	}

	return err;
}