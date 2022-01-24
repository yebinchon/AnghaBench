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
struct input_dev {int dummy; } ;
struct atkbd {unsigned int scroll; struct input_dev* dev; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct atkbd*) ; 
 int /*<<< orphan*/  FUNC1 (struct atkbd*) ; 
 struct input_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 
 int FUNC6 (char const*,int,unsigned int*) ; 

__attribute__((used)) static ssize_t FUNC7(struct atkbd *atkbd, const char *buf, size_t count)
{
	struct input_dev *old_dev, *new_dev;
	unsigned int value;
	int err;
	bool old_scroll;

	err = FUNC6(buf, 10, &value);
	if (err)
		return err;

	if (value > 1)
		return -EINVAL;

	if (atkbd->scroll != value) {
		old_dev = atkbd->dev;
		old_scroll = atkbd->scroll;

		new_dev = FUNC2();
		if (!new_dev)
			return -ENOMEM;

		atkbd->dev = new_dev;
		atkbd->scroll = value;
		FUNC1(atkbd);
		FUNC0(atkbd);

		err = FUNC4(atkbd->dev);
		if (err) {
			FUNC3(new_dev);

			atkbd->scroll = old_scroll;
			atkbd->dev = old_dev;
			FUNC1(atkbd);
			FUNC0(atkbd);

			return err;
		}
		FUNC5(old_dev);
	}
	return count;
}