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
struct mddev {unsigned long long recovery_cp; int /*<<< orphan*/  sb_flags; scalar_t__ pers; int /*<<< orphan*/  recovery; } ;
typedef  int ssize_t ;
typedef  unsigned long long sector_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  MD_RECOVERY_FROZEN ; 
 int /*<<< orphan*/  MD_SB_CHANGE_CLEAN ; 
 unsigned long long MaxSector ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int FUNC1 (char const*,int,unsigned long long*) ; 
 int FUNC2 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC6(struct mddev *mddev, const char *buf, size_t len)
{
	unsigned long long n;
	int err;

	if (FUNC0(buf, "none"))
		n = MaxSector;
	else {
		err = FUNC1(buf, 10, &n);
		if (err < 0)
			return err;
		if (n != (sector_t)n)
			return -EINVAL;
	}

	err = FUNC2(mddev);
	if (err)
		return err;
	if (mddev->pers && !FUNC5(MD_RECOVERY_FROZEN, &mddev->recovery))
		err = -EBUSY;

	if (!err) {
		mddev->recovery_cp = n;
		if (mddev->pers)
			FUNC4(MD_SB_CHANGE_CLEAN, &mddev->sb_flags);
	}
	FUNC3(mddev);
	return err ?: len;
}