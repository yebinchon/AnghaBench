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
struct i915_gem_engines {int /*<<< orphan*/ * engines; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_gem_engines*) ; 

__attribute__((used)) static void FUNC2(struct i915_gem_engines *e, unsigned int count)
{
	while (count--) {
		if (!e->engines[count])
			continue;

		FUNC0(e->engines[count]);
	}
	FUNC1(e);
}