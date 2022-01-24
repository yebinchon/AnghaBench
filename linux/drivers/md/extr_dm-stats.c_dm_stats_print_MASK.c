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
struct dm_stats {int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/ * histogram; int /*<<< orphan*/ * io_ticks; int /*<<< orphan*/  time_in_queue; int /*<<< orphan*/  io_ticks_total; int /*<<< orphan*/ * ticks; int /*<<< orphan*/ * sectors; int /*<<< orphan*/ * merges; int /*<<< orphan*/ * ios; } ;
struct dm_stat_shared {TYPE_1__ tmp; } ;
struct dm_stat {size_t n_entries; size_t step; size_t start; size_t end; int n_histogram_entries; struct dm_stat_shared* stat_shared; } ;
typedef  size_t sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOENT ; 
 size_t READ ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct dm_stat*,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_stat_shared*,struct dm_stat*,size_t) ; 
 struct dm_stat* FUNC3 (struct dm_stats*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_stat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_stat_shared*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct dm_stats *stats, int id,
			  size_t idx_start, size_t idx_len,
			  bool clear, char *result, unsigned maxlen)
{
	unsigned sz = 0;
	struct dm_stat *s;
	size_t x;
	sector_t start, end, step;
	size_t idx_end;
	struct dm_stat_shared *shared;

	/*
	 * Output format:
	 *   <start_sector>+<length> counters
	 */

	FUNC6(&stats->mutex);

	s = FUNC3(stats, id);
	if (!s) {
		FUNC7(&stats->mutex);
		return -ENOENT;
	}

	idx_end = idx_start + idx_len;
	if (idx_end < idx_start ||
	    idx_end > s->n_entries)
		idx_end = s->n_entries;

	if (idx_start > idx_end)
		idx_start = idx_end;

	step = s->step;
	start = s->start + (step * idx_start);

	for (x = idx_start; x < idx_end; x++, start = end) {
		shared = &s->stat_shared[x];
		end = start + step;
		if (FUNC8(end > s->end))
			end = s->end;

		FUNC2(shared, s, x);

		FUNC0("%llu+%llu %llu %llu %llu %llu %llu %llu %llu %llu %d %llu %llu %llu %llu",
		       (unsigned long long)start,
		       (unsigned long long)step,
		       shared->tmp.ios[READ],
		       shared->tmp.merges[READ],
		       shared->tmp.sectors[READ],
		       FUNC4(s, shared->tmp.ticks[READ]),
		       shared->tmp.ios[WRITE],
		       shared->tmp.merges[WRITE],
		       shared->tmp.sectors[WRITE],
		       FUNC4(s, shared->tmp.ticks[WRITE]),
		       FUNC5(shared),
		       FUNC4(s, shared->tmp.io_ticks_total),
		       FUNC4(s, shared->tmp.time_in_queue),
		       FUNC4(s, shared->tmp.io_ticks[READ]),
		       FUNC4(s, shared->tmp.io_ticks[WRITE]));
		if (s->n_histogram_entries) {
			unsigned i;
			for (i = 0; i < s->n_histogram_entries + 1; i++) {
				FUNC0("%s%llu", !i ? " " : ":", shared->tmp.histogram[i]);
			}
		}
		FUNC0("\n");

		if (FUNC8(sz + 1 >= maxlen))
			goto buffer_overflow;
	}

	if (clear)
		FUNC1(s, idx_start, idx_end, false);

buffer_overflow:
	FUNC7(&stats->mutex);

	return 1;
}