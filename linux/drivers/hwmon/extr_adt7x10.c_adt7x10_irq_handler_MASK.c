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
struct device {int /*<<< orphan*/  kobj; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADT7X10_STATUS ; 
 int ADT7X10_STAT_T_CRIT ; 
 int ADT7X10_STAT_T_HIGH ; 
 int ADT7X10_STAT_T_LOW ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *private)
{
	struct device *dev = private;
	int status;

	status = FUNC0(dev, ADT7X10_STATUS);
	if (status < 0)
		return IRQ_HANDLED;

	if (status & ADT7X10_STAT_T_HIGH)
		FUNC1(&dev->kobj, NULL, "temp1_max_alarm");
	if (status & ADT7X10_STAT_T_LOW)
		FUNC1(&dev->kobj, NULL, "temp1_min_alarm");
	if (status & ADT7X10_STAT_T_CRIT)
		FUNC1(&dev->kobj, NULL, "temp1_crit_alarm");

	return IRQ_HANDLED;
}