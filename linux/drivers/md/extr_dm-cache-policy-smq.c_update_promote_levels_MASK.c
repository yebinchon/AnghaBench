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
struct smq_policy {unsigned int read_promote_level; unsigned int write_promote_level; int /*<<< orphan*/  hotspot_stats; int /*<<< orphan*/  cache_alloc; } ;

/* Variables and functions */
 unsigned int NR_HOTSPOT_LEVELS ; 
#define  Q_FAIR 130 
#define  Q_POOR 129 
#define  Q_WELL 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct smq_policy*) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct smq_policy *mq)
{
	/*
	 * If there are unused cache entries then we want to be really
	 * eager to promote.
	 */
	unsigned threshold_level = FUNC0(&mq->cache_alloc) ?
		FUNC1(mq) : (NR_HOTSPOT_LEVELS / 2u);

	threshold_level = FUNC2(threshold_level, NR_HOTSPOT_LEVELS);

	/*
	 * If the hotspot queue is performing badly then we have little
	 * confidence that we know which blocks to promote.  So we cut down
	 * the amount of promotions.
	 */
	switch (FUNC3(&mq->hotspot_stats)) {
	case Q_POOR:
		threshold_level /= 4u;
		break;

	case Q_FAIR:
		threshold_level /= 2u;
		break;

	case Q_WELL:
		break;
	}

	mq->read_promote_level = NR_HOTSPOT_LEVELS - threshold_level;
	mq->write_promote_level = (NR_HOTSPOT_LEVELS - threshold_level);
}