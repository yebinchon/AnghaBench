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
struct resync_pages {int dummy; } ;
struct r1bio {int /*<<< orphan*/ * bios; } ;
struct pool_info {int raid_disks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct resync_pages* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct resync_pages*) ; 
 int /*<<< orphan*/  FUNC3 (struct r1bio*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct resync_pages*) ; 

__attribute__((used)) static void FUNC5(void *__r1_bio, void *data)
{
	struct pool_info *pi = data;
	int i;
	struct r1bio *r1bio = __r1_bio;
	struct resync_pages *rp = NULL;

	for (i = pi->raid_disks; i--; ) {
		rp = FUNC1(r1bio->bios[i]);
		FUNC4(rp);
		FUNC0(r1bio->bios[i]);
	}

	/* resync pages array stored in the 1st bio's .bi_private */
	FUNC2(rp);

	FUNC3(r1bio, data);
}