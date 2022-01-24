#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct output {int dummy; } ;
struct host1x {TYPE_1__* syncpt; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct output*,char*,...) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 unsigned int FUNC3 (struct host1x*) ; 
 unsigned int FUNC4 (struct host1x*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct host1x *m, struct output *o)
{
	unsigned int i;

	FUNC0(o, "---- syncpts ----\n");

	for (i = 0; i < FUNC4(m); i++) {
		u32 max = FUNC5(m->syncpt + i);
		u32 min = FUNC1(m->syncpt + i);

		if (!min && !max)
			continue;

		FUNC0(o, "id %u (%s) min %d max %d\n",
				    i, m->syncpt[i].name, min, max);
	}

	for (i = 0; i < FUNC3(m); i++) {
		u32 base_val;

		base_val = FUNC2(m->syncpt + i);
		if (base_val)
			FUNC0(o, "waitbase id %u val %d\n", i,
					    base_val);
	}

	FUNC0(o, "\n");
}