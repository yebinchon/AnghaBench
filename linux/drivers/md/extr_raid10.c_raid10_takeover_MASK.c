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
struct r0conf {int nr_strip_zones; TYPE_1__* strip_zone; } ;
struct mddev {scalar_t__ level; struct r0conf* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  nb_dev; int /*<<< orphan*/  zone_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct mddev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC4(struct mddev *mddev)
{
	struct r0conf *raid0_conf;

	/* raid10 can take over:
	 *  raid0 - providing it has only two drives
	 */
	if (mddev->level == 0) {
		/* for raid0 takeover only one zone is supported */
		raid0_conf = mddev->private;
		if (raid0_conf->nr_strip_zones > 1) {
			FUNC2("md/raid10:%s: cannot takeover raid 0 with more than one zone.\n",
				FUNC1(mddev));
			return FUNC0(-EINVAL);
		}
		return FUNC3(mddev,
			raid0_conf->strip_zone->zone_end,
			raid0_conf->strip_zone->nb_dev);
	}
	return FUNC0(-EINVAL);
}