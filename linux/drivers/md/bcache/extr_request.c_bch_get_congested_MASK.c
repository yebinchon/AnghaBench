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
struct cache_set {int congested_last_us; int /*<<< orphan*/  congested; int /*<<< orphan*/  congested_write_threshold_us; int /*<<< orphan*/  congested_read_threshold_us; } ;

/* Variables and functions */
 scalar_t__ CONGESTED_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 

unsigned int FUNC5(const struct cache_set *c)
{
	int i;

	if (!c->congested_read_threshold_us &&
	    !c->congested_write_threshold_us)
		return 0;

	i = (FUNC4() - c->congested_last_us) / 1024;
	if (i < 0)
		return 0;

	i += FUNC0(&c->congested);
	if (i >= 0)
		return 0;

	i += CONGESTED_MAX;

	if (i > 0)
		i = FUNC1(i, 6);

	i -= FUNC3(FUNC2());

	return i > 0 ? i : 1;
}