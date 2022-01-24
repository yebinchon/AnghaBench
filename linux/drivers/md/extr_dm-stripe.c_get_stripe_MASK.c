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
struct stripe_c {TYPE_1__* stripe; } ;
struct dm_target {int /*<<< orphan*/  table; } ;
struct TYPE_2__ {unsigned long long physical_start; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct dm_target*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,char*,unsigned long long*,char*) ; 

__attribute__((used)) static int FUNC3(struct dm_target *ti, struct stripe_c *sc,
		      unsigned int stripe, char **argv)
{
	unsigned long long start;
	char dummy;
	int ret;

	if (FUNC2(argv[1], "%llu%c", &start, &dummy) != 1)
		return -EINVAL;

	ret = FUNC0(ti, argv[0], FUNC1(ti->table),
			    &sc->stripe[stripe].dev);
	if (ret)
		return ret;

	sc->stripe[stripe].physical_start = start;

	return 0;
}