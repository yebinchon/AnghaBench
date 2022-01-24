#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stripe_head {int /*<<< orphan*/  count; TYPE_1__* group; int /*<<< orphan*/  lru; int /*<<< orphan*/  state; } ;
struct r5conf {scalar_t__ quiesce; int max_nr_stripes; int /*<<< orphan*/ * hash_locks; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  empty_inactive_list_nr; int /*<<< orphan*/ * inactive_list; int /*<<< orphan*/  active_stripes; int /*<<< orphan*/  cache_state; int /*<<< orphan*/  wait_for_stripe; int /*<<< orphan*/  log; scalar_t__ generation; int /*<<< orphan*/  wait_for_quiescent; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  stripes_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  R5_ALLOC_MORE ; 
 int /*<<< orphan*/  R5_DID_ALLOC ; 
 int /*<<< orphan*/  R5_INACTIVE_BLOCKED ; 
 int /*<<< orphan*/  STRIPE_EXPANDING ; 
 int /*<<< orphan*/  STRIPE_HANDLE ; 
 struct stripe_head* FUNC1 (struct r5conf*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct stripe_head* FUNC6 (struct r5conf*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct stripe_head*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC11 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

struct stripe_head *
FUNC21(struct r5conf *conf, sector_t sector,
			int previous, int noblock, int noquiesce)
{
	struct stripe_head *sh;
	int hash = FUNC18(sector);
	int inc_empty_inactive_list_flag;

	FUNC10("get_stripe, sector %llu\n", (unsigned long long)sector);

	FUNC15(conf->hash_locks + hash);

	do {
		FUNC20(conf->wait_for_quiescent,
				    conf->quiesce == 0 || noquiesce,
				    *(conf->hash_locks + hash));
		sh = FUNC1(conf, sector, conf->generation - previous);
		if (!sh) {
			if (!FUNC19(R5_INACTIVE_BLOCKED, &conf->cache_state)) {
				sh = FUNC6(conf, hash);
				if (!sh && !FUNC19(R5_DID_ALLOC,
						     &conf->cache_state))
					FUNC13(R5_ALLOC_MORE,
						&conf->cache_state);
			}
			if (noblock && sh == NULL)
				break;

			FUNC11(conf);
			if (!sh) {
				FUNC13(R5_INACTIVE_BLOCKED,
					&conf->cache_state);
				FUNC12(conf->log, 0);
				FUNC20(
					conf->wait_for_stripe,
					!FUNC9(conf->inactive_list + hash) &&
					(FUNC4(&conf->active_stripes)
					 < (conf->max_nr_stripes * 3 / 4)
					 || !FUNC19(R5_INACTIVE_BLOCKED,
						      &conf->cache_state)),
					*(conf->hash_locks + hash));
				FUNC5(R5_INACTIVE_BLOCKED,
					  &conf->cache_state);
			} else {
				FUNC7(sh, sector, previous);
				FUNC2(&sh->count);
			}
		} else if (!FUNC3(&sh->count)) {
			FUNC14(&conf->device_lock);
			if (!FUNC4(&sh->count)) {
				if (!FUNC19(STRIPE_HANDLE, &sh->state))
					FUNC2(&conf->active_stripes);
				FUNC0(FUNC9(&sh->lru) &&
				       !FUNC19(STRIPE_EXPANDING, &sh->state));
				inc_empty_inactive_list_flag = 0;
				if (!FUNC9(conf->inactive_list + hash))
					inc_empty_inactive_list_flag = 1;
				FUNC8(&sh->lru);
				if (FUNC9(conf->inactive_list + hash) && inc_empty_inactive_list_flag)
					FUNC2(&conf->empty_inactive_list_nr);
				if (sh->group) {
					sh->group->stripes_cnt--;
					sh->group = NULL;
				}
			}
			FUNC2(&sh->count);
			FUNC16(&conf->device_lock);
		}
	} while (sh == NULL);

	FUNC17(conf->hash_locks + hash);
	return sh;
}