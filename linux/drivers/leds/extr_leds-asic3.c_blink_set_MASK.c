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
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mfd_cell {size_t id; } ;
struct led_classdev {TYPE_1__* dev; } ;
struct asic3 {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 scalar_t__ ASIC3_LED_AutoStopCount ; 
 scalar_t__ ASIC3_LED_DutyTime ; 
 scalar_t__ ASIC3_LED_PeriodTime ; 
 scalar_t__ ASIC3_LED_TimeBase ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int EINVAL ; 
 int LED_EN ; 
 scalar_t__ MAX_CLK ; 
 unsigned long MAX_MS ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct asic3*,scalar_t__,int) ; 
 struct asic3* FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int* led_n_base ; 
 struct mfd_cell* FUNC4 (struct platform_device*) ; 
 struct platform_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct led_classdev *cdev,
	unsigned long *delay_on,
	unsigned long *delay_off)
{
	struct platform_device *pdev = FUNC5(cdev->dev->parent);
	const struct mfd_cell *cell = FUNC4(pdev);
	struct asic3 *asic = FUNC3(pdev->dev.parent);
	u32 on;
	u32 off;
	unsigned int base;

	if (*delay_on > MAX_MS || *delay_off > MAX_MS)
		return -EINVAL;

	if (*delay_on == 0 && *delay_off == 0) {
		/* If both are zero then a sensible default should be chosen */
		on = FUNC1(500);
		off = FUNC1(500);
	} else {
		on = FUNC1(*delay_on);
		off = FUNC1(*delay_off);
		if ((on + off) > MAX_CLK)
			return -EINVAL;
	}

	base = led_n_base[cell->id];
	FUNC2(asic, (base + ASIC3_LED_PeriodTime), (on + off));
	FUNC2(asic, (base + ASIC3_LED_DutyTime), on);
	FUNC2(asic, (base + ASIC3_LED_AutoStopCount), 0);
	FUNC2(asic, (base + ASIC3_LED_TimeBase), (LED_EN|0x4));

	*delay_on = FUNC0(on);
	*delay_off = FUNC0(off);

	return 0;
}