#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int raid_disks; int chunk_shift; } ;
struct r10conf {TYPE_2__ geo; TYPE_1__* mirrors; } ;
struct mddev {scalar_t__ delta_disks; scalar_t__ recovery_cp; scalar_t__ resync_max_sectors; scalar_t__ array_sectors; int chunk_sectors; scalar_t__ reshape_backwards; int /*<<< orphan*/  reshape_position; int /*<<< orphan*/  new_layout; int /*<<< orphan*/  layout; int /*<<< orphan*/  recovery; struct r10conf* private; } ;
struct md_rdev {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  replacement; int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  MD_RECOVERY_INTR ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  MaxSector ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct md_rdev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mddev *mddev)
{
	struct r10conf *conf = mddev->private;

	if (FUNC5(MD_RECOVERY_INTR, &mddev->recovery))
		return;

	if (mddev->delta_disks > 0) {
		if (mddev->recovery_cp > mddev->resync_max_sectors) {
			mddev->recovery_cp = mddev->resync_max_sectors;
			FUNC4(MD_RECOVERY_NEEDED, &mddev->recovery);
		}
		mddev->resync_max_sectors = mddev->array_sectors;
	} else {
		int d;
		FUNC2();
		for (d = conf->geo.raid_disks ;
		     d < conf->geo.raid_disks - mddev->delta_disks;
		     d++) {
			struct md_rdev *rdev = FUNC1(conf->mirrors[d].rdev);
			if (rdev)
				FUNC0(In_sync, &rdev->flags);
			rdev = FUNC1(conf->mirrors[d].replacement);
			if (rdev)
				FUNC0(In_sync, &rdev->flags);
		}
		FUNC3();
	}
	mddev->layout = mddev->new_layout;
	mddev->chunk_sectors = 1 << conf->geo.chunk_shift;
	mddev->reshape_position = MaxSector;
	mddev->delta_disks = 0;
	mddev->reshape_backwards = 0;
}