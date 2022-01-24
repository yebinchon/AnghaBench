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
struct extcon_dev {int max_supported; int state; size_t* supported_cable; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct extcon_dev* FUNC1 (struct device*) ; 
 TYPE_1__* extcon_info ; 
 int FUNC2 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
			  char *buf)
{
	int i, count = 0;
	struct extcon_dev *edev = FUNC1(dev);

	if (edev->max_supported == 0)
		return FUNC2(buf, "%u\n", edev->state);

	for (i = 0; i < edev->max_supported; i++) {
		count += FUNC2(buf + count, "%s=%d\n",
				extcon_info[edev->supported_cable[i]].name,
				 !!(edev->state & FUNC0(i)));
	}

	return count;
}