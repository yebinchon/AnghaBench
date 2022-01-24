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
struct i915_syncmap {unsigned int bitmap; scalar_t__ height; } ;

/* Variables and functions */
 struct i915_syncmap** FUNC0 (struct i915_syncmap*) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_syncmap*) ; 

__attribute__((used)) static void FUNC3(struct i915_syncmap *p)
{
	if (p->height) {
		unsigned int i;

		while ((i = FUNC1(p->bitmap))) {
			p->bitmap &= ~0u << i;
			FUNC3(FUNC0(p)[i - 1]);
		}
	}

	FUNC2(p);
}