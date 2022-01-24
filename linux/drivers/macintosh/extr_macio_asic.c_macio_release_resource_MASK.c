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
struct macio_devres {int res_mask; } ;
struct macio_dev {int dummy; } ;

/* Variables and functions */
 struct macio_devres* FUNC0 (struct macio_dev*) ; 
 scalar_t__ FUNC1 (struct macio_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct macio_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC4(struct macio_dev *dev, int resource_no)
{
	struct macio_devres *dr = FUNC0(dev);

	if (FUNC1(dev, resource_no) == 0)
		return;
	FUNC3(FUNC2(dev, resource_no),
			   FUNC1(dev, resource_no));
	if (dr && resource_no < 32)
		dr->res_mask &= ~(1 << resource_no);
}