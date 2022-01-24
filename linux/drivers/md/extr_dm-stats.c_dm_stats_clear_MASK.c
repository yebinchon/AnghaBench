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
struct dm_stats {int /*<<< orphan*/  mutex; } ;
struct dm_stat {int /*<<< orphan*/  n_entries; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct dm_stat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dm_stat* FUNC1 (struct dm_stats*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dm_stats *stats, int id)
{
	struct dm_stat *s;

	FUNC2(&stats->mutex);

	s = FUNC1(stats, id);
	if (!s) {
		FUNC3(&stats->mutex);
		return -ENOENT;
	}

	FUNC0(s, 0, s->n_entries, true);

	FUNC3(&stats->mutex);

	return 1;
}