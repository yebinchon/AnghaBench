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
struct mddev {int /*<<< orphan*/ * pers; } ;
struct md_rdev {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  FUNC0 (struct mddev*,struct md_rdev*) ; 
 struct md_rdev* FUNC1 (struct mddev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mddev *mddev, dev_t dev)
{
	struct md_rdev *rdev;
	int err = 0;

	if (mddev->pers == NULL)
		return -ENODEV;

	FUNC2();
	rdev = FUNC1(mddev, dev);
	if (!rdev)
		err =  -ENODEV;
	else {
		FUNC0(mddev, rdev);
		if (!FUNC4(Faulty, &rdev->flags))
			err = -EBUSY;
	}
	FUNC3();
	return err;
}