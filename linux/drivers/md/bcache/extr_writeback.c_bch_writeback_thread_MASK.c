#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  flags; struct cache_set* c; } ;
struct TYPE_3__ {int /*<<< orphan*/  keys; } ;
struct cached_dev {unsigned int writeback_delay; scalar_t__ writeback_write_wq; int /*<<< orphan*/  writeback_rate; TYPE_2__ disk; int /*<<< orphan*/  writeback_lock; int /*<<< orphan*/  sb; int /*<<< orphan*/  has_dirty; TYPE_1__ writeback_keys; int /*<<< orphan*/  writeback_running; } ;
struct cache_set {int gc_after_writeback; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCACHE_DEV_DETACHING ; 
 int BCH_DO_AUTO_GC ; 
 int BCH_ENABLE_AUTO_GC ; 
 int /*<<< orphan*/  BDEV_STATE_CLEAN ; 
 int /*<<< orphan*/  CACHE_SET_IO_DISABLE ; 
 unsigned int HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cached_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cached_dev*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct cache_set*) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct cached_dev*) ; 
 int FUNC13 (struct cached_dev*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 unsigned int FUNC15 (unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 

__attribute__((used)) static int FUNC20(void *arg)
{
	struct cached_dev *dc = arg;
	struct cache_set *c = dc->disk.c;
	bool searched_full_index;

	FUNC4(&dc->writeback_rate);

	while (!FUNC11() &&
	       !FUNC17(CACHE_SET_IO_DISABLE, &c->flags)) {
		FUNC8(&dc->writeback_lock);
		FUNC16(TASK_INTERRUPTIBLE);
		/*
		 * If the bache device is detaching, skip here and continue
		 * to perform writeback. Otherwise, if no dirty data on cache,
		 * or there is dirty data on cache but writeback is disabled,
		 * the writeback thread should sleep here and wait for others
		 * to wake up it.
		 */
		if (!FUNC17(BCACHE_DEV_DETACHING, &dc->disk.flags) &&
		    (!FUNC2(&dc->has_dirty) || !dc->writeback_running)) {
			FUNC18(&dc->writeback_lock);

			if (FUNC11() ||
			    FUNC17(CACHE_SET_IO_DISABLE, &c->flags)) {
				FUNC16(TASK_RUNNING);
				break;
			}

			FUNC14();
			continue;
		}
		FUNC16(TASK_RUNNING);

		searched_full_index = FUNC13(dc);

		if (searched_full_index &&
		    FUNC0(&dc->writeback_keys.keys)) {
			FUNC3(&dc->has_dirty, 0);
			FUNC1(&dc->sb, BDEV_STATE_CLEAN);
			FUNC5(dc, NULL);
			/*
			 * If bcache device is detaching via sysfs interface,
			 * writeback thread should stop after there is no dirty
			 * data on cache. BCACHE_DEV_DETACHING flag is set in
			 * bch_cached_dev_detach().
			 */
			if (FUNC17(BCACHE_DEV_DETACHING, &dc->disk.flags)) {
				FUNC18(&dc->writeback_lock);
				break;
			}

			/*
			 * When dirty data rate is high (e.g. 50%+), there might
			 * be heavy buckets fragmentation after writeback
			 * finished, which hurts following write performance.
			 * If users really care about write performance they
			 * may set BCH_ENABLE_AUTO_GC via sysfs, then when
			 * BCH_DO_AUTO_GC is set, garbage collection thread
			 * will be wake up here. After moving gc, the shrunk
			 * btree and discarded free buckets SSD space may be
			 * helpful for following write requests.
			 */
			if (c->gc_after_writeback ==
			    (BCH_ENABLE_AUTO_GC|BCH_DO_AUTO_GC)) {
				c->gc_after_writeback &= ~BCH_DO_AUTO_GC;
				FUNC10(c);
			}
		}

		FUNC18(&dc->writeback_lock);

		FUNC12(dc);

		if (searched_full_index) {
			unsigned int delay = dc->writeback_delay * HZ;

			while (delay &&
			       !FUNC11() &&
			       !FUNC17(CACHE_SET_IO_DISABLE, &c->flags) &&
			       !FUNC17(BCACHE_DEV_DETACHING, &dc->disk.flags))
				delay = FUNC15(delay);

			FUNC4(&dc->writeback_rate);
		}
	}

	if (dc->writeback_write_wq) {
		FUNC9(dc->writeback_write_wq);
		FUNC7(dc->writeback_write_wq);
	}
	FUNC6(dc);
	FUNC19();

	return 0;
}