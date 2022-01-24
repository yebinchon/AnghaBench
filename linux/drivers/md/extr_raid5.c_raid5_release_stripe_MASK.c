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
struct stripe_head {int hash_lock_index; int /*<<< orphan*/  count; int /*<<< orphan*/  release_list; int /*<<< orphan*/  state; struct r5conf* raid_conf; } ;
struct r5conf {int /*<<< orphan*/  device_lock; TYPE_1__* mddev; int /*<<< orphan*/  released_stripes; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  STRIPE_ON_RELEASE_LIST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct r5conf*,struct stripe_head*,struct list_head*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct r5conf*,struct list_head*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

void FUNC10(struct stripe_head *sh)
{
	struct r5conf *conf = sh->raid_conf;
	unsigned long flags;
	struct list_head list;
	int hash;
	bool wakeup;

	/* Avoid release_list until the last reference.
	 */
	if (FUNC1(&sh->count, -1, 1))
		return;

	if (FUNC9(!conf->mddev->thread) ||
		FUNC8(STRIPE_ON_RELEASE_LIST, &sh->state))
		goto slow_path;
	wakeup = FUNC4(&sh->release_list, &conf->released_stripes);
	if (wakeup)
		FUNC5(conf->mddev->thread);
	return;
slow_path:
	/* we are ok here if STRIPE_ON_RELEASE_LIST is set or not */
	if (FUNC2(&sh->count, &conf->device_lock, flags)) {
		FUNC0(&list);
		hash = sh->hash_lock_index;
		FUNC3(conf, sh, &list);
		FUNC7(&conf->device_lock, flags);
		FUNC6(conf, &list, hash);
	}
}