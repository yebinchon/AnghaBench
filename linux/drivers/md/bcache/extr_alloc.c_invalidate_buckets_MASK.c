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
struct cache {int /*<<< orphan*/  sb; int /*<<< orphan*/  invalidate_needs_gc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
#define  CACHE_REPLACEMENT_FIFO 130 
#define  CACHE_REPLACEMENT_LRU 129 
#define  CACHE_REPLACEMENT_RANDOM 128 
 int /*<<< orphan*/  FUNC2 (struct cache*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache*) ; 
 int /*<<< orphan*/  FUNC4 (struct cache*) ; 

__attribute__((used)) static void FUNC5(struct cache *ca)
{
	FUNC0(ca->invalidate_needs_gc);

	switch (FUNC1(&ca->sb)) {
	case CACHE_REPLACEMENT_LRU:
		FUNC3(ca);
		break;
	case CACHE_REPLACEMENT_FIFO:
		FUNC2(ca);
		break;
	case CACHE_REPLACEMENT_RANDOM:
		FUNC4(ca);
		break;
	}
}