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
struct mddev {unsigned long long resync_max; unsigned long long resync_min; scalar_t__ ro; int chunk_sectors; int /*<<< orphan*/  lock; int /*<<< orphan*/  recovery_wait; int /*<<< orphan*/  recovery; } ;
typedef  size_t ssize_t ;
typedef  unsigned long long sector_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  MD_RECOVERY_RUNNING ; 
 unsigned long long MaxSector ; 
 scalar_t__ FUNC0 (char const*,int,unsigned long long*) ; 
 scalar_t__ FUNC1 (unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC7(struct mddev *mddev, const char *buf, size_t len)
{
	int err;
	FUNC2(&mddev->lock);
	if (FUNC4(buf, "max", 3) == 0)
		mddev->resync_max = MaxSector;
	else {
		unsigned long long max;
		int chunk;

		err = -EINVAL;
		if (FUNC0(buf, 10, &max))
			goto out_unlock;
		if (max < mddev->resync_min)
			goto out_unlock;

		err = -EBUSY;
		if (max < mddev->resync_max &&
		    mddev->ro == 0 &&
		    FUNC5(MD_RECOVERY_RUNNING, &mddev->recovery))
			goto out_unlock;

		/* Must be a multiple of chunk_size */
		chunk = mddev->chunk_sectors;
		if (chunk) {
			sector_t temp = max;

			err = -EINVAL;
			if (FUNC1(temp, chunk))
				goto out_unlock;
		}
		mddev->resync_max = max;
	}
	FUNC6(&mddev->recovery_wait);
	err = 0;
out_unlock:
	FUNC3(&mddev->lock);
	return err ?: len;
}