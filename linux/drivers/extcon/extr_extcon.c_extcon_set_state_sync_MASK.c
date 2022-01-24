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
struct extcon_dev {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct extcon_dev*,unsigned int,int) ; 
 int FUNC1 (struct extcon_dev*,unsigned int) ; 
 int FUNC2 (struct extcon_dev*,unsigned int) ; 
 int FUNC3 (struct extcon_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct extcon_dev *edev, unsigned int id, bool state)
{
	int ret, index;
	unsigned long flags;

	index = FUNC2(edev, id);
	if (index < 0)
		return index;

	/* Check whether the external connector's state is changed. */
	FUNC4(&edev->lock, flags);
	ret = FUNC3(edev, index, state);
	FUNC5(&edev->lock, flags);
	if (!ret)
		return 0;

	ret = FUNC0(edev, id, state);
	if (ret < 0)
		return ret;

	return FUNC1(edev, id);
}