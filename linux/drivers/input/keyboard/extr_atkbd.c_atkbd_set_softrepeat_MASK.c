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
struct atkbd {unsigned int softrepeat; int softraw; struct input_dev* dev; int /*<<< orphan*/  write; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct atkbd*) ; 
 struct input_dev* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int FUNC5 (char const*,int,unsigned int*) ; 

__attribute__((used)) static ssize_t FUNC6(struct atkbd *atkbd, const char *buf, size_t count)
{
	struct input_dev *old_dev, *new_dev;
	unsigned int value;
	int err;
	bool old_softrepeat, old_softraw;

	if (!atkbd->write)
		return -EIO;

	err = FUNC5(buf, 10, &value);
	if (err)
		return err;

	if (value > 1)
		return -EINVAL;

	if (atkbd->softrepeat != value) {
		old_dev = atkbd->dev;
		old_softrepeat = atkbd->softrepeat;
		old_softraw = atkbd->softraw;

		new_dev = FUNC1();
		if (!new_dev)
			return -ENOMEM;

		atkbd->dev = new_dev;
		atkbd->softrepeat = value;
		if (atkbd->softrepeat)
			atkbd->softraw = true;
		FUNC0(atkbd);

		err = FUNC3(atkbd->dev);
		if (err) {
			FUNC2(new_dev);

			atkbd->dev = old_dev;
			atkbd->softrepeat = old_softrepeat;
			atkbd->softraw = old_softraw;
			FUNC0(atkbd);

			return err;
		}
		FUNC4(old_dev);
	}
	return count;
}