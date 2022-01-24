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
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
typedef  enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int EPROBE_DEFER ; 
 struct gpio_desc* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_desc*) ; 
 int FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 struct gpio_desc* FUNC5 (struct device*,char const*,int) ; 
 struct gpio_desc* FUNC6 (struct device*,int /*<<< orphan*/ *,unsigned int,int) ; 

__attribute__((used)) static struct gpio_desc *FUNC7(struct device *dev,
					   const char *con_id,
					   unsigned int index,
					   enum gpiod_flags gflags)
{
	struct gpio_desc *retdesc;
	int ret;

	retdesc = FUNC5(dev, con_id, gflags);
	if (!FUNC1(retdesc)) {
		FUNC3(dev, "got GPIO from name %s\n", con_id);
		return retdesc;
	}

	retdesc = FUNC6(dev, NULL, index, gflags);
	if (!FUNC1(retdesc)) {
		FUNC3(dev, "got GPIO from index %u\n", index);
		return retdesc;
	}

	ret = FUNC2(retdesc);

	/* FIXME: hack in the old code, is this really necessary? */
	if (ret == -EINVAL)
		retdesc = FUNC0(-EPROBE_DEFER);

	/* This happens if the GPIO driver is not yet probed, let's defer */
	if (ret == -ENOENT)
		retdesc = FUNC0(-EPROBE_DEFER);

	if (ret != -EPROBE_DEFER)
		FUNC4(dev, "error trying to get descriptor: %d\n", ret);

	return retdesc;
}