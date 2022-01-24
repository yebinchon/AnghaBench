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
struct max7301 {int /*<<< orphan*/  lock; int /*<<< orphan*/  chip; int /*<<< orphan*/  (* write ) (struct device*,int,int) ;} ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct max7301* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int,int) ; 

int FUNC4(struct device *dev)
{
	struct max7301 *ts = FUNC0(dev);

	if (ts == NULL)
		return -ENODEV;

	/* Power down the chip and disable IRQ output */
	ts->write(dev, 0x04, 0x00);
	FUNC1(&ts->chip);
	FUNC2(&ts->lock);
	return 0;
}