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
struct TYPE_2__ {int nbuckets; int first_bucket; } ;
struct cache {int invalidate_needs_gc; int /*<<< orphan*/  set; TYPE_1__ sb; struct bucket* buckets; int /*<<< orphan*/  free_inc; } ;
struct bucket {int dummy; } ;
typedef  int /*<<< orphan*/  n ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cache*,struct bucket*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*,struct bucket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct cache *ca)
{
	struct bucket *b;
	size_t checked = 0;

	while (!FUNC2(&ca->free_inc)) {
		size_t n;

		FUNC3(&n, sizeof(n));

		n %= (size_t) (ca->sb.nbuckets - ca->sb.first_bucket);
		n += ca->sb.first_bucket;

		b = ca->buckets + n;

		if (FUNC0(ca, b))
			FUNC1(ca, b);

		if (++checked >= ca->sb.nbuckets / 2) {
			ca->invalidate_needs_gc = 1;
			FUNC4(ca->set);
			return;
		}
	}
}