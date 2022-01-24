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
typedef  int u32 ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  hwmon_chip_update_interval 128 
 int FUNC0 (struct device*,long) ; 

__attribute__((used)) static int FUNC1(struct device *dev, u32 attr, long val)
{
	switch (attr) {
	case hwmon_chip_update_interval:
		return FUNC0(dev, val);
	default:
		return -EINVAL;
	}
	return 0;
}