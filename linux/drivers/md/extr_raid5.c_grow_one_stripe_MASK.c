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
struct stripe_head {int hash_lock_index; } ;
struct r5conf {int max_nr_stripes; int /*<<< orphan*/  active_stripes; int /*<<< orphan*/  slab_cache; int /*<<< orphan*/  pool_size; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int NR_STRIPE_HASH_LOCKS ; 
 struct stripe_head* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct r5conf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct stripe_head*) ; 
 scalar_t__ FUNC3 (struct stripe_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct stripe_head*) ; 

__attribute__((used)) static int FUNC6(struct r5conf *conf, gfp_t gfp)
{
	struct stripe_head *sh;

	sh = FUNC0(conf->slab_cache, gfp, conf->pool_size, conf);
	if (!sh)
		return 0;

	if (FUNC3(sh, gfp)) {
		FUNC5(sh);
		FUNC2(conf->slab_cache, sh);
		return 0;
	}
	sh->hash_lock_index =
		conf->max_nr_stripes % NR_STRIPE_HASH_LOCKS;
	/* we just created an active stripe so... */
	FUNC1(&conf->active_stripes);

	FUNC4(sh);
	conf->max_nr_stripes++;
	return 1;
}