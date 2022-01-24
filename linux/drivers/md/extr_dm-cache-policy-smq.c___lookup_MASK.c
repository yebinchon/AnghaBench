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
struct smq_policy {int /*<<< orphan*/  cache_stats; int /*<<< orphan*/  table; } ;
struct policy_work {int dummy; } ;
struct entry {int /*<<< orphan*/  level; } ;
typedef  enum promote_result { ____Placeholder_promote_result } promote_result ;
typedef  int /*<<< orphan*/  dm_oblock_t ;
typedef  int /*<<< orphan*/  dm_cblock_t ;

/* Variables and functions */
 int ENOENT ; 
 int PROMOTE_NOT ; 
 struct entry* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smq_policy*,struct entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct smq_policy*,int /*<<< orphan*/ ,struct policy_work**) ; 
 int /*<<< orphan*/  FUNC3 (struct smq_policy*,struct entry*) ; 
 int FUNC4 (struct smq_policy*,struct entry*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct entry* FUNC7 (struct smq_policy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct smq_policy *mq, dm_oblock_t oblock, dm_cblock_t *cblock,
		    int data_dir, bool fast_copy,
		    struct policy_work **work, bool *background_work)
{
	struct entry *e, *hs_e;
	enum promote_result pr;

	*background_work = false;

	e = FUNC0(&mq->table, oblock);
	if (e) {
		FUNC5(&mq->cache_stats, e->level);

		FUNC3(mq, e);
		*cblock = FUNC1(mq, e);
		return 0;

	} else {
		FUNC6(&mq->cache_stats);

		/*
		 * The hotspot queue only gets updated with misses.
		 */
		hs_e = FUNC7(mq, oblock);

		pr = FUNC4(mq, hs_e, data_dir, fast_copy);
		if (pr != PROMOTE_NOT) {
			FUNC2(mq, oblock, work);
			*background_work = true;
		}

		return -ENOENT;
	}
}