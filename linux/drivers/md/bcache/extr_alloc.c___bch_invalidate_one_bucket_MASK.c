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
struct cache {int buckets; TYPE_1__* set; } ;
struct bucket {int /*<<< orphan*/  pin; int /*<<< orphan*/  prio; } ;
struct TYPE_2__ {int /*<<< orphan*/  bucket_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct bucket*) ; 
 scalar_t__ GC_MARK_RECLAIMABLE ; 
 scalar_t__ FUNC2 (struct bucket*) ; 
 int /*<<< orphan*/  INITIAL_PRIO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cache*,struct bucket*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cache*,struct bucket*) ; 

void FUNC7(struct cache *ca, struct bucket *b)
{
	FUNC5(&ca->set->bucket_lock);
	FUNC0(FUNC1(b) && FUNC1(b) != GC_MARK_RECLAIMABLE);

	if (FUNC2(b))
		FUNC6(ca, b - ca->buckets);

	FUNC4(ca, b);
	b->prio = INITIAL_PRIO;
	FUNC3(&b->pin);
}