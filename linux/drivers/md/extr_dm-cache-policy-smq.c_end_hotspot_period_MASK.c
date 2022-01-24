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
struct smq_policy {scalar_t__ next_hotspot_period; int /*<<< orphan*/  hotspot_stats; int /*<<< orphan*/  hotspot; int /*<<< orphan*/  nr_hotspot_blocks; int /*<<< orphan*/  hotspot_hit_bits; } ;

/* Variables and functions */
 scalar_t__ HOTSPOT_UPDATE_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct smq_policy*) ; 
 int /*<<< orphan*/  FUNC5 (struct smq_policy*) ; 

__attribute__((used)) static void FUNC6(struct smq_policy *mq)
{
	FUNC0(mq->hotspot_hit_bits, mq->nr_hotspot_blocks);
	FUNC5(mq);

	if (FUNC3(jiffies, mq->next_hotspot_period)) {
		FUNC4(mq);
		FUNC1(&mq->hotspot);
		FUNC2(&mq->hotspot_stats);
		mq->next_hotspot_period = jiffies + HOTSPOT_UPDATE_PERIOD;
	}
}