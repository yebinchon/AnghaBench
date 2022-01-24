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
struct r5conf {TYPE_1__* mddev; scalar_t__ retry_read_aligned; int /*<<< orphan*/  wait_for_quiescent; int /*<<< orphan*/  active_stripes; int /*<<< orphan*/  wait_for_stripe; scalar_t__ hash_locks; struct list_head* inactive_list; int /*<<< orphan*/  empty_inactive_list_nr; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int NR_STRIPE_HASH_LOCKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct r5conf *conf,
					 struct list_head *temp_inactive_list,
					 int hash)
{
	int size;
	bool do_wakeup = false;
	unsigned long flags;

	if (hash == NR_STRIPE_HASH_LOCKS) {
		size = NR_STRIPE_HASH_LOCKS;
		hash = NR_STRIPE_HASH_LOCKS - 1;
	} else
		size = 1;
	while (size) {
		struct list_head *list = &temp_inactive_list[size - 1];

		/*
		 * We don't hold any lock here yet, raid5_get_active_stripe() might
		 * remove stripes from the list
		 */
		if (!FUNC3(list)) {
			FUNC6(conf->hash_locks + hash, flags);
			if (FUNC2(conf->inactive_list + hash) &&
			    !FUNC2(list))
				FUNC0(&conf->empty_inactive_list_nr);
			FUNC4(list, conf->inactive_list + hash);
			do_wakeup = true;
			FUNC7(conf->hash_locks + hash, flags);
		}
		size--;
		hash--;
	}

	if (do_wakeup) {
		FUNC8(&conf->wait_for_stripe);
		if (FUNC1(&conf->active_stripes) == 0)
			FUNC8(&conf->wait_for_quiescent);
		if (conf->retry_read_aligned)
			FUNC5(conf->mddev->thread);
	}
}