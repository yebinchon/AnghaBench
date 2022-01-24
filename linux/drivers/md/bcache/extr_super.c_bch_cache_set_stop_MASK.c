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
struct cache_set {int /*<<< orphan*/  caching; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_SET_STOPPING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct cache_set *c)
{
	if (!FUNC1(CACHE_SET_STOPPING, &c->flags))
		/* closure_fn set to __cache_set_unregister() */
		FUNC0(&c->caching);
}