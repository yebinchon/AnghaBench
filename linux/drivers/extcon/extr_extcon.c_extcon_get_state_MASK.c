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
 int EINVAL ; 
 int FUNC0 (struct extcon_dev*,unsigned int const) ; 
 int FUNC1 (struct extcon_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct extcon_dev *edev, const unsigned int id)
{
	int index, state;
	unsigned long flags;

	if (!edev)
		return -EINVAL;

	index = FUNC0(edev, id);
	if (index < 0)
		return index;

	FUNC2(&edev->lock, flags);
	state = FUNC1(edev, index);
	FUNC3(&edev->lock, flags);

	return state;
}