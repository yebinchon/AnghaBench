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
struct cache {int /*<<< orphan*/  migration_worker; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cache*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct cache *cache)
{
	if (FUNC0(cache))
		return;

	FUNC1(cache->wq, &cache->migration_worker);
}