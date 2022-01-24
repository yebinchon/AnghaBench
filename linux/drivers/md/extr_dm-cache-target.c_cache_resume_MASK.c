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
struct dm_target {struct cache* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct cache {int need_tick_bio; TYPE_1__ waker; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct dm_target *ti)
{
	struct cache *cache = ti->private;

	cache->need_tick_bio = true;
	FUNC0(cache);
	FUNC1(&cache->waker.work);
}