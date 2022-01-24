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
struct mddev {int /*<<< orphan*/  sb_wait; int /*<<< orphan*/  pending_writes; int /*<<< orphan*/  sb_flags; } ;
struct md_rdev {int /*<<< orphan*/  flags; struct mddev* mddev; } ;
struct bio {int bi_opf; scalar_t__ bi_status; struct md_rdev* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  LastDev ; 
 int MD_FAILFAST ; 
 int /*<<< orphan*/  MD_SB_NEED_REWRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct md_rdev*,struct mddev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct bio *bio)
{
	struct md_rdev *rdev = bio->bi_private;
	struct mddev *mddev = rdev->mddev;

	if (bio->bi_status) {
		FUNC4("md: super_written gets error=%d\n", bio->bi_status);
		FUNC3(mddev, rdev);
		if (!FUNC7(Faulty, &rdev->flags)
		    && (bio->bi_opf & MD_FAILFAST)) {
			FUNC6(MD_SB_NEED_REWRITE, &mddev->sb_flags);
			FUNC6(LastDev, &rdev->flags);
		}
	} else
		FUNC2(LastDev, &rdev->flags);

	if (FUNC0(&mddev->pending_writes))
		FUNC8(&mddev->sb_wait);
	FUNC5(rdev, mddev);
	FUNC1(bio);
}