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
struct device {int /*<<< orphan*/ * type; } ;

/* Variables and functions */
 int FUNC0 (struct device*,void*) ; 
 int FUNC1 (struct device*,void*,int (*) (struct device*,void*)) ; 
 int /*<<< orphan*/  i2c_adapter_type ; 

__attribute__((used)) static int FUNC2(struct device *dev, void *addrp)
{
	int result;

	if (dev->type == &i2c_adapter_type)
		result = FUNC1(dev, addrp,
						i2c_check_mux_children);
	else
		result = FUNC0(dev, addrp);

	return result;
}