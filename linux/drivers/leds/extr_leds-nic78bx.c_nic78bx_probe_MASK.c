#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct nic78bx_led_data {scalar_t__ io_base; int /*<<< orphan*/  lock; struct platform_device* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  cdev; struct nic78bx_led_data* data; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 scalar_t__ NIC78BX_LOCK_REG_OFFSET ; 
 int /*<<< orphan*/  NIC78BX_UNLOCK_VALUE ; 
 scalar_t__ NIC78BX_USER_LED_IO_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct nic78bx_led_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* nic78bx_leds ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct nic78bx_led_data*) ; 
 scalar_t__ FUNC8 (struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct nic78bx_led_data *led_data;
	struct resource *io_rc;
	int ret, i;

	led_data = FUNC2(dev, sizeof(*led_data), GFP_KERNEL);
	if (!led_data)
		return -ENOMEM;

	led_data->pdev = pdev;
	FUNC7(pdev, led_data);

	io_rc = FUNC6(pdev, IORESOURCE_IO, 0);
	if (!io_rc) {
		FUNC1(dev, "missing IO resources\n");
		return -EINVAL;
	}

	if (FUNC8(io_rc) < NIC78BX_USER_LED_IO_SIZE) {
		FUNC1(dev, "IO region too small\n");
		return -EINVAL;
	}

	if (!FUNC4(dev, io_rc->start, FUNC8(io_rc),
				 KBUILD_MODNAME)) {
		FUNC1(dev, "failed to get IO region\n");
		return -EBUSY;
	}

	led_data->io_base = io_rc->start;
	FUNC9(&led_data->lock);

	for (i = 0; i < FUNC0(nic78bx_leds); i++) {
		nic78bx_leds[i].data = led_data;

		ret = FUNC3(dev, &nic78bx_leds[i].cdev);
		if (ret)
			return ret;
	}

	/* Unlock LED register */
	FUNC5(NIC78BX_UNLOCK_VALUE,
	     led_data->io_base + NIC78BX_LOCK_REG_OFFSET);

	return ret;
}