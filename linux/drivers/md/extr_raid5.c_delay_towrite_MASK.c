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
struct stripe_head_state {scalar_t__ injournal; scalar_t__ log_failed; } ;
struct r5dev {int /*<<< orphan*/  flags; } ;
struct r5conf {int /*<<< orphan*/  cache_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  R5C_LOG_CRITICAL ; 
 int /*<<< orphan*/  R5_Insync ; 
 int /*<<< orphan*/  R5_OVERWRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC1(struct r5conf *conf,
				 struct r5dev *dev,
				 struct stripe_head_state *s)
{
	/* case 1 above */
	if (!FUNC0(R5_OVERWRITE, &dev->flags) &&
	    !FUNC0(R5_Insync, &dev->flags) && s->injournal)
		return true;
	/* case 2 above */
	if (FUNC0(R5C_LOG_CRITICAL, &conf->cache_state) &&
	    s->injournal > 0)
		return true;
	/* case 3 above */
	if (s->log_failed && s->injournal)
		return true;
	return false;
}