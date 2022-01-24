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
struct policy_work {int op; int /*<<< orphan*/  cblock; int /*<<< orphan*/  oblock; } ;
struct dm_cache_migration {int /*<<< orphan*/  k; struct policy_work* op; struct cache* cache; } ;
struct cache {int /*<<< orphan*/  committer; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
#define  POLICY_DEMOTE 130 
#define  POLICY_PROMOTE 129 
#define  POLICY_WRITEBACK 128 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cache*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_cache_migration*,int) ; 
 int /*<<< orphan*/  mg_success ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct dm_cache_migration* FUNC9 (struct work_struct*) ; 

__attribute__((used)) static void FUNC10(struct work_struct *ws)
{
	int r;
	struct dm_cache_migration *mg = FUNC9(ws);
	struct cache *cache = mg->cache;
	struct policy_work *op = mg->op;

	switch (op->op) {
	case POLICY_PROMOTE:
		r = FUNC3(cache->cmd, op->cblock, op->oblock);
		if (r) {
			FUNC0("%s: migration failed; couldn't insert mapping",
				    FUNC1(cache));
			FUNC6(cache, "dm_cache_insert_mapping", r);

			FUNC7(mg, false);
			return;
		}
		FUNC7(mg, true);
		break;

	case POLICY_DEMOTE:
		r = FUNC4(cache->cmd, op->cblock);
		if (r) {
			FUNC0("%s: migration failed; couldn't update on disk metadata",
				    FUNC1(cache));
			FUNC6(cache, "dm_cache_remove_mapping", r);

			FUNC7(mg, false);
			return;
		}

		/*
		 * It would be nice if we only had to commit when a REQ_FLUSH
		 * comes through.  But there's one scenario that we have to
		 * look out for:
		 *
		 * - vblock x in a cache block
		 * - domotion occurs
		 * - cache block gets reallocated and over written
		 * - crash
		 *
		 * When we recover, because there was no commit the cache will
		 * rollback to having the data for vblock x in the cache block.
		 * But the cache block has since been overwritten, so it'll end
		 * up pointing to data that was never in 'x' during the history
		 * of the device.
		 *
		 * To avoid this issue we require a commit as part of the
		 * demotion operation.
		 */
		FUNC5(&mg->k, mg_success);
		FUNC2(&cache->committer, &mg->k);
		FUNC8(&cache->committer);
		break;

	case POLICY_WRITEBACK:
		FUNC7(mg, true);
		break;
	}
}