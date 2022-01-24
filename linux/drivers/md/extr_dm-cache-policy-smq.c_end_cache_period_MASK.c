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
struct smq_policy {scalar_t__ next_cache_period; int /*<<< orphan*/  cache_stats; int /*<<< orphan*/  clean; int /*<<< orphan*/  dirty; int /*<<< orphan*/  cache_size; int /*<<< orphan*/  cache_hit_bits; } ;

/* Variables and functions */
 scalar_t__ CACHE_UPDATE_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct smq_policy *mq)
{
	if (FUNC4(jiffies, mq->next_cache_period)) {
		FUNC0(mq->cache_hit_bits, FUNC1(mq->cache_size));

		FUNC2(&mq->dirty);
		FUNC2(&mq->clean);
		FUNC3(&mq->cache_stats);

		mq->next_cache_period = jiffies + CACHE_UPDATE_PERIOD;
	}
}