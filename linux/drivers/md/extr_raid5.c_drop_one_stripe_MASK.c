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
struct stripe_head {int /*<<< orphan*/  count; } ;
struct r5conf {int max_nr_stripes; int /*<<< orphan*/  active_stripes; int /*<<< orphan*/  slab_cache; scalar_t__ hash_locks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int STRIPE_HASH_LOCKS_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct stripe_head*) ; 
 struct stripe_head* FUNC4 (struct r5conf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct r5conf *conf)
{
	struct stripe_head *sh;
	int hash = (conf->max_nr_stripes - 1) & STRIPE_HASH_LOCKS_MASK;

	FUNC6(conf->hash_locks + hash);
	sh = FUNC4(conf, hash);
	FUNC7(conf->hash_locks + hash);
	if (!sh)
		return 0;
	FUNC0(FUNC2(&sh->count));
	FUNC5(sh);
	FUNC3(conf->slab_cache, sh);
	FUNC1(&conf->active_stripes);
	conf->max_nr_stripes--;
	return 1;
}