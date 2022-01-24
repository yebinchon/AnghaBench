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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct device {int dummy; } ;
struct ad7879 {int /*<<< orphan*/  swap_xy; int /*<<< orphan*/  pen_down_acc_interval; int /*<<< orphan*/  averaging; int /*<<< orphan*/  median; int /*<<< orphan*/  acquisition_time; int /*<<< orphan*/  first_conversion_delay; scalar_t__ x_plate_ohms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct device*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct ad7879 *ts)
{
	int err;
	u32 tmp;

	err = FUNC2(dev, "adi,resistance-plate-x", &tmp);
	if (err) {
		FUNC0(dev, "failed to get resistance-plate-x property\n");
		return err;
	}
	ts->x_plate_ohms = (u16)tmp;

	FUNC3(dev, "adi,first-conversion-delay",
				&ts->first_conversion_delay);
	FUNC3(dev, "adi,acquisition-time",
				&ts->acquisition_time);
	FUNC3(dev, "adi,median-filter-size", &ts->median);
	FUNC3(dev, "adi,averaging", &ts->averaging);
	FUNC3(dev, "adi,conversion-interval",
				&ts->pen_down_acc_interval);

	ts->swap_xy = FUNC1(dev, "touchscreen-swapped-x-y");

	return 0;
}