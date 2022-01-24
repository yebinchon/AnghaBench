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
struct stripe_head {int /*<<< orphan*/  state; struct r5conf* raid_conf; } ;
struct r5l_log {int dummy; } ;
struct r5conf {int /*<<< orphan*/  preread_active_stripes; struct r5l_log* log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  STRIPE_PREREAD_ACTIVE ; 
 int /*<<< orphan*/  STRIPE_R5C_CACHING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct r5l_log*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct stripe_head *sh)
{
	struct r5conf *conf = sh->raid_conf;
	struct r5l_log *log = conf->log;

	FUNC0(!FUNC4(log));

	FUNC1(!FUNC6(STRIPE_R5C_CACHING, &sh->state));
	FUNC3(STRIPE_R5C_CACHING, &sh->state);

	if (!FUNC5(STRIPE_PREREAD_ACTIVE, &sh->state))
		FUNC2(&conf->preread_active_stripes);
}