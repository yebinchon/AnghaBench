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
struct module {int dummy; } ;
struct iio_trigger {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct iio_trigger*,struct module*) ; 
 int /*<<< orphan*/  devm_iio_trigger_unreg ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct iio_trigger**) ; 
 struct iio_trigger** FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_trigger**) ; 

int FUNC4(struct device *dev,
				struct iio_trigger *trig_info,
				struct module *this_mod)
{
	struct iio_trigger **ptr;
	int ret;

	ptr = FUNC2(devm_iio_trigger_unreg, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return -ENOMEM;

	*ptr = trig_info;
	ret = FUNC0(trig_info, this_mod);
	if (!ret)
		FUNC1(dev, ptr);
	else
		FUNC3(ptr);

	return ret;
}