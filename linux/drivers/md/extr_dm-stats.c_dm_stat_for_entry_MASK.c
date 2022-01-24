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
struct dm_stats_aux {unsigned long duration_ns; scalar_t__ merged; } ;
struct dm_stat_shared {int /*<<< orphan*/ * in_flight; } ;
struct dm_stat_percpu {int* ios; unsigned long* ticks; int /*<<< orphan*/ * histogram; int /*<<< orphan*/ * merges; int /*<<< orphan*/ * sectors; } ;
struct dm_stat {int stat_flags; int n_histogram_entries; unsigned long long* histogram_boundaries; struct dm_stat_percpu** stat_percpu; struct dm_stat_shared* stat_shared; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int STAT_PRECISE_TIMESTAMPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_stat*,struct dm_stat_shared*,struct dm_stat_percpu*) ; 
 unsigned long long FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 size_t FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct dm_stat *s, size_t entry,
			      int idx, sector_t len,
			      struct dm_stats_aux *stats_aux, bool end,
			      unsigned long duration_jiffies)
{
	struct dm_stat_shared *shared = &s->stat_shared[entry];
	struct dm_stat_percpu *p;

	/*
	 * For strict correctness we should use local_irq_save/restore
	 * instead of preempt_disable/enable.
	 *
	 * preempt_disable/enable is racy if the driver finishes bios
	 * from non-interrupt context as well as from interrupt context
	 * or from more different interrupts.
	 *
	 * On 64-bit architectures the race only results in not counting some
	 * events, so it is acceptable.  On 32-bit architectures the race could
	 * cause the counter going off by 2^32, so we need to do proper locking
	 * there.
	 *
	 * part_stat_lock()/part_stat_unlock() have this race too.
	 */
#if BITS_PER_LONG == 32
	unsigned long flags;
	local_irq_save(flags);
#else
	FUNC6();
#endif
	p = &s->stat_percpu[FUNC8()][entry];

	if (!end) {
		FUNC2(s, shared, p);
		FUNC1(&shared->in_flight[idx]);
	} else {
		unsigned long long duration;
		FUNC2(s, shared, p);
		FUNC0(&shared->in_flight[idx]);
		p->sectors[idx] += len;
		p->ios[idx] += 1;
		p->merges[idx] += stats_aux->merged;
		if (!(s->stat_flags & STAT_PRECISE_TIMESTAMPS)) {
			p->ticks[idx] += duration_jiffies;
			duration = FUNC3(duration_jiffies);
		} else {
			p->ticks[idx] += stats_aux->duration_ns;
			duration = stats_aux->duration_ns;
		}
		if (s->n_histogram_entries) {
			unsigned lo = 0, hi = s->n_histogram_entries + 1;
			while (lo + 1 < hi) {
				unsigned mid = (lo + hi) / 2;
				if (s->histogram_boundaries[mid - 1] > duration) {
					hi = mid;
				} else {
					lo = mid;
				}

			}
			p->histogram[lo]++;
		}
	}

#if BITS_PER_LONG == 32
	local_irq_restore(flags);
#else
	FUNC7();
#endif
}