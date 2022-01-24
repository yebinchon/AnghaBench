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
typedef  int uint64_t ;
struct time_stats {int last; int average_duration; int average_frequency; int /*<<< orphan*/  lock; int /*<<< orphan*/  max_duration; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int) ; 

void FUNC6(struct time_stats *stats, uint64_t start_time)
{
	uint64_t now, duration, last;

	FUNC3(&stats->lock);

	now		= FUNC1();
	duration	= FUNC5(now, start_time)
		? now - start_time : 0;
	last		= FUNC5(now, stats->last)
		? now - stats->last : 0;

	stats->max_duration = FUNC2(stats->max_duration, duration);

	if (stats->last) {
		FUNC0(stats->average_duration, duration, 8, 8);

		if (stats->average_frequency)
			FUNC0(stats->average_frequency, last, 8, 8);
		else
			stats->average_frequency  = last << 8;
	} else {
		stats->average_duration  = duration << 8;
	}

	stats->last = now ?: 1;

	FUNC4(&stats->lock);
}