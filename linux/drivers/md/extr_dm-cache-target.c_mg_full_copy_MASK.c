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
struct work_struct {int dummy; } ;
struct policy_work {int /*<<< orphan*/  oblock; int /*<<< orphan*/  cblock; int /*<<< orphan*/  op; } ;
struct dm_cache_migration {int /*<<< orphan*/  k; struct policy_work* op; struct cache* cache; } ;
struct cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLICY_PROMOTE ; 
 int /*<<< orphan*/  FUNC0 (struct dm_cache_migration*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct work_struct*)) ; 
 int /*<<< orphan*/  FUNC2 (struct cache*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct work_struct*) ; 
 struct dm_cache_migration* FUNC5 (struct work_struct*) ; 

__attribute__((used)) static void FUNC6(struct work_struct *ws)
{
	struct dm_cache_migration *mg = FUNC5(ws);
	struct cache *cache = mg->cache;
	struct policy_work *op = mg->op;
	bool is_policy_promote = (op->op == POLICY_PROMOTE);

	if ((!is_policy_promote && !FUNC2(cache, op->cblock)) ||
	    FUNC3(cache, op->oblock)) {
		FUNC4(ws);
		return;
	}

	FUNC1(&mg->k, mg_upgrade_lock);
	FUNC0(mg, is_policy_promote);
}