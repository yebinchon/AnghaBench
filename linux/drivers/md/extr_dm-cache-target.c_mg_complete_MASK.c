#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct policy_work {int op; int /*<<< orphan*/  oblock; int /*<<< orphan*/  cblock; } ;
struct TYPE_3__ {int /*<<< orphan*/  input; } ;
struct dm_cache_migration {scalar_t__ cell; TYPE_2__* overwrite_bio; TYPE_1__ k; struct policy_work* op; struct cache* cache; } ;
struct cache {int /*<<< orphan*/  prison; int /*<<< orphan*/  policy; int /*<<< orphan*/  stats; } ;
struct bio_list {int dummy; } ;
typedef  int /*<<< orphan*/  dm_cblock_t ;
struct TYPE_4__ {int /*<<< orphan*/  bi_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
#define  POLICY_DEMOTE 130 
#define  POLICY_PROMOTE 129 
#define  POLICY_WRITEBACK 128 
 int /*<<< orphan*/  FUNC0 (struct cache*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cache*) ; 
 int /*<<< orphan*/  FUNC5 (struct cache*,struct bio_list*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,struct bio_list*) ; 
 int /*<<< orphan*/  FUNC7 (struct cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_cache_migration*) ; 
 int /*<<< orphan*/  FUNC10 (struct cache*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct policy_work*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (struct cache*) ; 

__attribute__((used)) static void FUNC15(struct dm_cache_migration *mg, bool success)
{
	struct bio_list bios;
	struct cache *cache = mg->cache;
	struct policy_work *op = mg->op;
	dm_cblock_t cblock = op->cblock;

	if (success)
		FUNC13(&cache->stats, op->op);

	switch (op->op) {
	case POLICY_PROMOTE:
		FUNC3(cache, FUNC11(cache, op->oblock));
		FUNC12(cache->policy, op, success);

		if (mg->overwrite_bio) {
			if (success)
				FUNC8(cache, cblock);
			else if (mg->k.input)
				mg->overwrite_bio->bi_status = mg->k.input;
			else
				mg->overwrite_bio->bi_status = BLK_STS_IOERR;
			FUNC1(mg->overwrite_bio);
		} else {
			if (success)
				FUNC7(cache, cblock);
			FUNC4(cache);
		}
		break;

	case POLICY_DEMOTE:
		/*
		 * We clear dirty here to update the nr_dirty counter.
		 */
		if (success)
			FUNC7(cache, cblock);
		FUNC12(cache->policy, op, success);
		FUNC4(cache);
		break;

	case POLICY_WRITEBACK:
		if (success)
			FUNC7(cache, cblock);
		FUNC12(cache->policy, op, success);
		FUNC4(cache);
		break;
	}

	FUNC2(&bios);
	if (mg->cell) {
		if (FUNC6(cache->prison, mg->cell, &bios))
			FUNC10(cache, mg->cell);
	}

	FUNC9(mg);
	FUNC5(cache, &bios);
	FUNC14(cache);

	FUNC0(cache);
}