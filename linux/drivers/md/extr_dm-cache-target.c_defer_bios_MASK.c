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
struct cache {int /*<<< orphan*/  lock; int /*<<< orphan*/  deferred_bios; } ;
struct bio_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bio_list*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct cache*) ; 

__attribute__((used)) static void FUNC5(struct cache *cache, struct bio_list *bios)
{
	unsigned long flags;

	FUNC2(&cache->lock, flags);
	FUNC1(&cache->deferred_bios, bios);
	FUNC0(bios);
	FUNC3(&cache->lock, flags);

	FUNC4(cache);
}