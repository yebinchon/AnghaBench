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
struct extcon_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct extcon_dev*,unsigned int) ; 
 int FUNC1 (struct extcon_dev*,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 

int FUNC3(struct extcon_dev *edev, unsigned int id,
					unsigned int prop)
{
	int index;

	if (!edev)
		return -EINVAL;

	/* Check whether the property is supported or not */
	if (!FUNC2(id, prop))
		return -EINVAL;

	/* Find the cable index of external connector by using id */
	index = FUNC0(edev, id);
	if (index < 0)
		return index;

	return FUNC1(edev, id, index, prop);
}