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
struct mddev {scalar_t__ array_sectors; int external_size; int /*<<< orphan*/  gendisk; TYPE_1__* pers; } ;
typedef  int ssize_t ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ (* size ) (struct mddev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int E2BIG ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct mddev*) ; 
 int FUNC1 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (char const*,scalar_t__*) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 
 scalar_t__ FUNC7 (struct mddev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct mddev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC9(struct mddev *mddev, const char *buf, size_t len)
{
	sector_t sectors;
	int err;

	err = FUNC1(mddev);
	if (err)
		return err;

	/* cluster raid doesn't support change array_sectors */
	if (FUNC0(mddev)) {
		FUNC2(mddev);
		return -EINVAL;
	}

	if (FUNC6(buf, "default", 7) == 0) {
		if (mddev->pers)
			sectors = mddev->pers->size(mddev, 0, 0);
		else
			sectors = mddev->array_sectors;

		mddev->external_size = 0;
	} else {
		if (FUNC5(buf, &sectors) < 0)
			err = -EINVAL;
		else if (mddev->pers && mddev->pers->size(mddev, 0, 0) < sectors)
			err = -E2BIG;
		else
			mddev->external_size = 1;
	}

	if (!err) {
		mddev->array_sectors = sectors;
		if (mddev->pers) {
			FUNC4(mddev->gendisk, mddev->array_sectors);
			FUNC3(mddev->gendisk);
		}
	}
	FUNC2(mddev);
	return err ?: len;
}