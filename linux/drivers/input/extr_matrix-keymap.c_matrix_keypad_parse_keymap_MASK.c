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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct device* parent; } ;
struct input_dev {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char const*,int,...) ; 
 int FUNC1 (struct device*,char const*) ; 
 int FUNC2 (struct device*,char const*,int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(const char *propname,
				      unsigned int rows, unsigned int cols,
				      struct input_dev *input_dev)
{
	struct device *dev = input_dev->dev.parent;
	unsigned int row_shift = FUNC3(cols);
	unsigned int max_keys = rows << row_shift;
	u32 *keys;
	int i;
	int size;
	int retval;

	if (!propname)
		propname = "linux,keymap";

	size = FUNC1(dev, propname);
	if (size <= 0) {
		FUNC0(dev, "missing or malformed property %s: %d\n",
			propname, size);
		return size < 0 ? size : -EINVAL;
	}

	if (size > max_keys) {
		FUNC0(dev, "%s size overflow (%d vs max %u)\n",
			propname, size, max_keys);
		return -EINVAL;
	}

	keys = FUNC5(size, sizeof(u32), GFP_KERNEL);
	if (!keys)
		return -ENOMEM;

	retval = FUNC2(dev, propname, keys, size);
	if (retval) {
		FUNC0(dev, "failed to read %s property: %d\n",
			propname, retval);
		goto out;
	}

	for (i = 0; i < size; i++) {
		if (!FUNC6(input_dev, rows, cols,
					   row_shift, keys[i])) {
			retval = -EINVAL;
			goto out;
		}
	}

	retval = 0;

out:
	FUNC4(keys);
	return retval;
}