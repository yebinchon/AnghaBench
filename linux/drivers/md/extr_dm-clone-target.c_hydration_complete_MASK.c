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
struct dm_clone_region_hydration {scalar_t__ status; int /*<<< orphan*/  deferred_bios; scalar_t__ overwrite_bio; struct clone* clone; } ;
struct clone {int /*<<< orphan*/  hydrations_in_flight; } ;
typedef  scalar_t__ blk_status_t ;

/* Variables and functions */
 scalar_t__ BLK_STS_IOERR ; 
 scalar_t__ BLK_STS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct clone*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_clone_region_hydration*) ; 
 int FUNC5 (struct dm_clone_region_hydration*) ; 
 int /*<<< orphan*/  FUNC6 (struct clone*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct clone*) ; 

__attribute__((used)) static void FUNC9(struct dm_clone_region_hydration *hd)
{
	int r;
	blk_status_t status;
	struct clone *clone = hd->clone;

	r = FUNC5(hd);

	if (hd->status == BLK_STS_OK && FUNC7(!r)) {
		if (hd->overwrite_bio)
			FUNC2(clone, hd->overwrite_bio);

		FUNC6(clone, &hd->deferred_bios);
	} else {
		status = r ? BLK_STS_IOERR : hd->status;

		if (hd->overwrite_bio)
			FUNC1(&hd->deferred_bios, hd->overwrite_bio);

		FUNC3(&hd->deferred_bios, status);
	}

	FUNC4(hd);

	if (FUNC0(&clone->hydrations_in_flight))
		FUNC8(clone);
}