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
struct stripe_head {int /*<<< orphan*/  state; int /*<<< orphan*/  count; int /*<<< orphan*/  lru; } ;
struct r5conf {int /*<<< orphan*/  r5c_flushing_full_stripes; int /*<<< orphan*/  r5c_flushing_partial_stripes; int /*<<< orphan*/  active_stripes; int /*<<< orphan*/  device_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  STRIPE_HANDLE ; 
 int /*<<< orphan*/  STRIPE_ON_RELEASE_LIST ; 
 int /*<<< orphan*/  STRIPE_R5C_CACHING ; 
 int /*<<< orphan*/  STRIPE_R5C_PARTIAL_STRIPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct r5conf *conf, struct stripe_head *sh)
{
	FUNC0(FUNC3(&sh->lru));
	FUNC0(!FUNC8(STRIPE_R5C_CACHING, &sh->state));
	FUNC0(FUNC8(STRIPE_HANDLE, &sh->state));

	/*
	 * The stripe is not ON_RELEASE_LIST, so it is safe to call
	 * raid5_release_stripe() while holding conf->device_lock
	 */
	FUNC0(FUNC8(STRIPE_ON_RELEASE_LIST, &sh->state));
	FUNC4(&conf->device_lock);

	FUNC2(&sh->lru);
	FUNC1(&sh->count);

	FUNC7(STRIPE_HANDLE, &sh->state);
	FUNC1(&conf->active_stripes);
	FUNC5(sh);

	if (FUNC8(STRIPE_R5C_PARTIAL_STRIPE, &sh->state))
		FUNC1(&conf->r5c_flushing_partial_stripes);
	else
		FUNC1(&conf->r5c_flushing_full_stripes);
	FUNC6(sh);
}