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
struct smq_policy {int /*<<< orphan*/  es; int /*<<< orphan*/  cache_hit_bits; int /*<<< orphan*/  hotspot_hit_bits; int /*<<< orphan*/  table; int /*<<< orphan*/  hotspot_table; int /*<<< orphan*/  bg_work; } ;
struct dm_cache_policy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct smq_policy*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct smq_policy* FUNC5 (struct dm_cache_policy*) ; 

__attribute__((used)) static void FUNC6(struct dm_cache_policy *p)
{
	struct smq_policy *mq = FUNC5(p);

	FUNC0(mq->bg_work);
	FUNC2(&mq->hotspot_table);
	FUNC2(&mq->table);
	FUNC1(mq->hotspot_hit_bits);
	FUNC1(mq->cache_hit_bits);
	FUNC4(&mq->es);
	FUNC3(mq);
}