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
struct mddev {scalar_t__ dev_sectors; scalar_t__ pers; } ;
typedef  int ssize_t ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct mddev*,int) ; 
 int FUNC1 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*) ; 
 int FUNC3 (char const*,scalar_t__*) ; 
 int FUNC4 (struct mddev*,scalar_t__) ; 

__attribute__((used)) static ssize_t
FUNC5(struct mddev *mddev, const char *buf, size_t len)
{
	/* If array is inactive, we can reduce the component size, but
	 * not increase it (except from 0).
	 * If array is active, we can try an on-line resize
	 */
	sector_t sectors;
	int err = FUNC3(buf, &sectors);

	if (err < 0)
		return err;
	err = FUNC1(mddev);
	if (err)
		return err;
	if (mddev->pers) {
		err = FUNC4(mddev, sectors);
		if (err == 0)
			FUNC0(mddev, 1);
	} else {
		if (mddev->dev_sectors == 0 ||
		    mddev->dev_sectors > sectors)
			mddev->dev_sectors = sectors;
		else
			err = -ENOSPC;
	}
	FUNC2(mddev);
	return err ? err : len;
}