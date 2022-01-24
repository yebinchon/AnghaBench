#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct thin_c {TYPE_4__* origin_dev; scalar_t__ dev_id; TYPE_2__* pool_dev; TYPE_5__* pool; int /*<<< orphan*/  td; } ;
struct dm_target {struct thin_c* private; } ;
typedef  int status_type_t ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int dm_block_t ;
struct TYPE_10__ {int sectors_per_block; } ;
struct TYPE_9__ {TYPE_3__* bdev; } ;
struct TYPE_8__ {int /*<<< orphan*/  bd_dev; } ;
struct TYPE_7__ {TYPE_1__* bdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ PM_FAIL ; 
#define  STATUSTYPE_INFO 129 
#define  STATUSTYPE_TABLE 128 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC6(struct dm_target *ti, status_type_t type,
			unsigned status_flags, char *result, unsigned maxlen)
{
	int r;
	ssize_t sz = 0;
	dm_block_t mapped, highest;
	char buf[BDEVNAME_SIZE];
	struct thin_c *tc = ti->private;

	if (FUNC5(tc->pool) == PM_FAIL) {
		FUNC0("Fail");
		return;
	}

	if (!tc->td)
		FUNC0("-");
	else {
		switch (type) {
		case STATUSTYPE_INFO:
			r = FUNC3(tc->td, &mapped);
			if (r) {
				FUNC1("dm_thin_get_mapped_count returned %d", r);
				goto err;
			}

			r = FUNC2(tc->td, &highest);
			if (r < 0) {
				FUNC1("dm_thin_get_highest_mapped_block returned %d", r);
				goto err;
			}

			FUNC0("%llu ", mapped * tc->pool->sectors_per_block);
			if (r)
				FUNC0("%llu", ((highest + 1) *
						tc->pool->sectors_per_block) - 1);
			else
				FUNC0("-");
			break;

		case STATUSTYPE_TABLE:
			FUNC0("%s %lu",
			       FUNC4(buf, tc->pool_dev->bdev->bd_dev),
			       (unsigned long) tc->dev_id);
			if (tc->origin_dev)
				FUNC0(" %s", FUNC4(buf, tc->origin_dev->bdev->bd_dev));
			break;
		}
	}

	return;

err:
	FUNC0("Error");
}