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
struct pti_device {int lpp_dest_mask; int lpp_dest; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 struct pti_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  lpp_dest_str ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
			      const char *buf, size_t size)
{
	struct pti_device *pti = FUNC1(dev);
	int i;

	i = FUNC2(lpp_dest_str, buf);
	if (i < 0)
		return i;

	if (!(pti->lpp_dest_mask & FUNC0(i)))
		return -EINVAL;

	pti->lpp_dest = i;
	return size;
}