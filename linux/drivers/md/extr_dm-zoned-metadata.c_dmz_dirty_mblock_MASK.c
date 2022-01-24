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
struct dmz_metadata {int /*<<< orphan*/  mblk_lock; int /*<<< orphan*/  mblk_dirty_list; } ;
struct dmz_mblock {int /*<<< orphan*/  link; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_META_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct dmz_metadata *zmd, struct dmz_mblock *mblk)
{
	FUNC1(&zmd->mblk_lock);
	if (!FUNC3(DMZ_META_DIRTY, &mblk->state))
		FUNC0(&mblk->link, &zmd->mblk_dirty_list);
	FUNC2(&zmd->mblk_lock);
}