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
struct mddev {int /*<<< orphan*/  recovery; int /*<<< orphan*/ * to_remove; int /*<<< orphan*/ * private; int /*<<< orphan*/  lock; struct md_personality* pers; } ;
struct md_personality {int /*<<< orphan*/  owner; scalar_t__ sync_request; int /*<<< orphan*/  (* free ) (struct mddev*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MD_RECOVERY_FROZEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*) ; 
 int /*<<< orphan*/  md_misc_wq ; 
 int /*<<< orphan*/  md_redundancy_group ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mddev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct mddev *mddev)
{
	struct md_personality *pers = mddev->pers;
	FUNC2(mddev);
	FUNC3(mddev);
	/* Ensure ->event_work is done */
	FUNC1(md_misc_wq);
	FUNC5(&mddev->lock);
	mddev->pers = NULL;
	FUNC6(&mddev->lock);
	pers->free(mddev, mddev->private);
	mddev->private = NULL;
	if (pers->sync_request && mddev->to_remove == NULL)
		mddev->to_remove = &md_redundancy_group;
	FUNC4(pers->owner);
	FUNC0(MD_RECOVERY_FROZEN, &mddev->recovery);
}