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
struct dmz_metadata {int /*<<< orphan*/  mblk_lock; int /*<<< orphan*/  mblk_lru_list; int /*<<< orphan*/  mblk_rbtree; } ;
struct dmz_mblock {scalar_t__ ref; int /*<<< orphan*/  link; int /*<<< orphan*/  state; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_META_DIRTY ; 
 int /*<<< orphan*/  DMZ_META_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct dmz_metadata*,struct dmz_mblock*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmz_metadata*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct dmz_metadata *zmd,
			       struct dmz_mblock *mblk)
{

	if (!mblk)
		return;

	FUNC4(&zmd->mblk_lock);

	mblk->ref--;
	if (mblk->ref == 0) {
		if (FUNC6(DMZ_META_ERROR, &mblk->state)) {
			FUNC3(&mblk->node, &zmd->mblk_rbtree);
			FUNC0(zmd, mblk);
		} else if (!FUNC6(DMZ_META_DIRTY, &mblk->state)) {
			FUNC2(&mblk->link, &zmd->mblk_lru_list);
			FUNC1(zmd, 1);
		}
	}

	FUNC5(&zmd->mblk_lock);
}