#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct r10conf {TYPE_3__* mirrors; } ;
struct r10bio {int sectors; TYPE_2__* devs; struct mddev* mddev; } ;
struct page {int dummy; } ;
struct mddev {int /*<<< orphan*/  recovery; int /*<<< orphan*/  recovery_disabled; struct r10conf* private; } ;
struct md_rdev {TYPE_1__* mddev; int /*<<< orphan*/  flags; } ;
struct bio {int dummy; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_8__ {struct page** pages; } ;
struct TYPE_7__ {int /*<<< orphan*/  recovery_disabled; struct md_rdev* rdev; } ;
struct TYPE_6__ {int devnum; scalar_t__ addr; struct bio* bio; } ;
struct TYPE_5__ {int /*<<< orphan*/  recovery; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_RECOVERY_INTR ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  WantReplacement ; 
 int /*<<< orphan*/  WriteErrorSeen ; 
 TYPE_4__* FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct md_rdev*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct md_rdev*,scalar_t__,int,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct r10bio *r10_bio)
{
	/* We got a read error during recovery.
	 * We repeat the read in smaller page-sized sections.
	 * If a read succeeds, write it to the new device or record
	 * a bad block if we cannot.
	 * If a read fails, record a bad block on both old and
	 * new devices.
	 */
	struct mddev *mddev = r10_bio->mddev;
	struct r10conf *conf = mddev->private;
	struct bio *bio = r10_bio->devs[0].bio;
	sector_t sect = 0;
	int sectors = r10_bio->sectors;
	int idx = 0;
	int dr = r10_bio->devs[0].devnum;
	int dw = r10_bio->devs[1].devnum;
	struct page **pages = FUNC0(bio)->pages;

	while (sectors) {
		int s = sectors;
		struct md_rdev *rdev;
		sector_t addr;
		int ok;

		if (s > (PAGE_SIZE>>9))
			s = PAGE_SIZE >> 9;

		rdev = conf->mirrors[dr].rdev;
		addr = r10_bio->devs[0].addr + sect,
		ok = FUNC5(rdev,
				  addr,
				  s << 9,
				  pages[idx],
				  REQ_OP_READ, 0, false);
		if (ok) {
			rdev = conf->mirrors[dw].rdev;
			addr = r10_bio->devs[1].addr + sect;
			ok = FUNC5(rdev,
					  addr,
					  s << 9,
					  pages[idx],
					  REQ_OP_WRITE, 0, false);
			if (!ok) {
				FUNC4(WriteErrorSeen, &rdev->flags);
				if (!FUNC6(WantReplacement,
						      &rdev->flags))
					FUNC4(MD_RECOVERY_NEEDED,
						&rdev->mddev->recovery);
			}
		}
		if (!ok) {
			/* We don't worry if we cannot set a bad block -
			 * it really is bad so there is no loss in not
			 * recording it yet
			 */
			FUNC3(rdev, addr, s, 0);

			if (rdev != conf->mirrors[dw].rdev) {
				/* need bad block on destination too */
				struct md_rdev *rdev2 = conf->mirrors[dw].rdev;
				addr = r10_bio->devs[1].addr + sect;
				ok = FUNC3(rdev2, addr, s, 0);
				if (!ok) {
					/* just abort the recovery */
					FUNC2("md/raid10:%s: recovery aborted due to read error\n",
						  FUNC1(mddev));

					conf->mirrors[dw].recovery_disabled
						= mddev->recovery_disabled;
					FUNC4(MD_RECOVERY_INTR,
						&mddev->recovery);
					break;
				}
			}
		}

		sectors -= s;
		sect += s;
		idx++;
	}
}