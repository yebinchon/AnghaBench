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
struct stripe_head_state {scalar_t__ waiting_extra_page; } ;
struct stripe_head {int /*<<< orphan*/  state; struct r5conf* raid_conf; } ;
struct r5conf {scalar_t__ log; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  STRIPE_LOG_TRAPPED ; 
 int /*<<< orphan*/  STRIPE_R5C_CACHING ; 
 int FUNC0 (struct r5conf*,struct stripe_head*) ; 
 int FUNC1 (scalar_t__,struct stripe_head*) ; 
 int FUNC2 (scalar_t__,struct stripe_head*) ; 
 scalar_t__ FUNC3 (struct r5conf*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC5(struct stripe_head *sh, struct stripe_head_state *s)
{
	struct r5conf *conf = sh->raid_conf;

	if (conf->log) {
		if (!FUNC4(STRIPE_R5C_CACHING, &sh->state)) {
			/* writing out phase */
			if (s->waiting_extra_page)
				return 0;
			return FUNC2(conf->log, sh);
		} else if (FUNC4(STRIPE_LOG_TRAPPED, &sh->state)) {
			/* caching phase */
			return FUNC1(conf->log, sh);
		}
	} else if (FUNC3(conf)) {
		return FUNC0(conf, sh);
	}

	return -EAGAIN;
}