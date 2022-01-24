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
struct cxio_rdev {TYPE_1__* t3cdev_p; int /*<<< orphan*/  rscp; int /*<<< orphan*/  entry; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ulp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxio_rdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cxio_rdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct cxio_rdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct cxio_rdev *rdev_p)
{
	if (rdev_p) {
		FUNC2(rdev_p);
		FUNC3(rdev_p);
		FUNC4(&rdev_p->entry);
		FUNC0(rdev_p);
		FUNC1(rdev_p->rscp);
		rdev_p->t3cdev_p->ulp = NULL;
	}
}