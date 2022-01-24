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
struct macio_devres {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct macio_dev {TYPE_1__ ofdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct macio_devres* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct macio_devres* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,struct macio_devres*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  maciom_release ; 

int FUNC3(struct macio_dev *dev)
{
	struct macio_devres *dr;

	dr = FUNC1(&dev->ofdev.dev, maciom_release, NULL, NULL);
	if (!dr) {
		dr = FUNC0(maciom_release, sizeof(*dr), GFP_KERNEL);
		if (!dr)
			return -ENOMEM;
	}
	return FUNC2(&dev->ofdev.dev, dr, NULL, NULL) != NULL;
}