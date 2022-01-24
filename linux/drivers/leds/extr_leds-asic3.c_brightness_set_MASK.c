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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mfd_cell {size_t id; } ;
struct led_classdev {TYPE_1__* dev; } ;
struct asic3 {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 scalar_t__ ASIC3_LED_AutoStopCount ; 
 scalar_t__ ASIC3_LED_DutyTime ; 
 scalar_t__ ASIC3_LED_PeriodTime ; 
 scalar_t__ ASIC3_LED_TimeBase ; 
 int LED_EN ; 
 int LED_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct asic3*,scalar_t__,int) ; 
 struct asic3* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int* led_n_base ; 
 struct mfd_cell* FUNC2 (struct platform_device*) ; 
 struct platform_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct led_classdev *cdev,
	enum led_brightness value)
{
	struct platform_device *pdev = FUNC3(cdev->dev->parent);
	const struct mfd_cell *cell = FUNC2(pdev);
	struct asic3 *asic = FUNC1(pdev->dev.parent);
	u32 timebase;
	unsigned int base;

	timebase = (value == LED_OFF) ? 0 : (LED_EN|0x4);

	base = led_n_base[cell->id];
	FUNC0(asic, (base + ASIC3_LED_PeriodTime), 32);
	FUNC0(asic, (base + ASIC3_LED_DutyTime), 32);
	FUNC0(asic, (base + ASIC3_LED_AutoStopCount), 0);
	FUNC0(asic, (base + ASIC3_LED_TimeBase), timebase);
}