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
struct etb_drvdata {unsigned long trigger_cntr; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct etb_drvdata* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
			    struct device_attribute *attr, char *buf)
{
	struct etb_drvdata *drvdata = FUNC0(dev->parent);
	unsigned long val = drvdata->trigger_cntr;

	return FUNC1(buf, "%#lx\n", val);
}