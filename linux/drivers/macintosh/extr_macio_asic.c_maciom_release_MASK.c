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
struct macio_dev {int /*<<< orphan*/  n_resources; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct macio_dev*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct macio_dev* FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *gendev, void *res)
{
	struct macio_dev *dev = FUNC2(gendev);
	struct macio_devres *dr = res;
	int i, max;

	max = FUNC1(dev->n_resources, 32);
	for (i = 0; i < max; i++) {
		if (dr->res_mask & (1 << i))
			FUNC0(dev, i);
	}
}