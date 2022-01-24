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
struct platform_device {int dummy; } ;
struct iio_trigger {int dummy; } ;
struct iio_interrupt_trigger_info {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_trigger*) ; 
 struct iio_interrupt_trigger_info* FUNC2 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC4 (struct iio_interrupt_trigger_info*) ; 
 struct iio_trigger* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct iio_trigger *trig;
	struct iio_interrupt_trigger_info *trig_info;

	trig = FUNC5(pdev);
	trig_info = FUNC2(trig);
	FUNC3(trig);
	FUNC0(trig_info->irq, trig);
	FUNC4(trig_info);
	FUNC1(trig);

	return 0;
}