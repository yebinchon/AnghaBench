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
struct cache {TYPE_1__* set; } ;
struct bucket {int /*<<< orphan*/  pin; } ;
struct TYPE_2__ {int /*<<< orphan*/  gc_mark_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct bucket*) ; 
 scalar_t__ GC_MARK_RECLAIMABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct bucket*) ; 

bool FUNC4(struct cache *ca, struct bucket *b)
{
	FUNC0(!ca->set->gc_mark_valid);

	return (!FUNC1(b) ||
		FUNC1(b) == GC_MARK_RECLAIMABLE) &&
		!FUNC2(&b->pin) &&
		FUNC3(b);
}