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
struct bucket {int dummy; } ;
struct TYPE_2__ {scalar_t__ avail_nbuckets; scalar_t__ nbuckets; int /*<<< orphan*/  gc_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bucket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bucket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC3(struct cache *ca, struct bucket *b)
{
	FUNC0(b, 0);
	FUNC1(b, 0);

	if (ca->set->avail_nbuckets < ca->set->nbuckets) {
		ca->set->avail_nbuckets++;
		FUNC2(ca->set, &ca->set->gc_stats);
	}
}