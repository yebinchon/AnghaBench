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
struct cached_dev {scalar_t__ stop_when_cache_set_failed; int io_disable; int /*<<< orphan*/  has_dirty; } ;
struct TYPE_4__ {int /*<<< orphan*/  set_uuid; } ;
struct cache_set {TYPE_2__ sb; } ;
struct bcache_device {TYPE_1__* disk; } ;
struct TYPE_3__ {int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 scalar_t__ BCH_CACHED_DEV_STOP_ALWAYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bcache_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct cache_set *c,
					   struct bcache_device *d,
					   struct cached_dev *dc)
{
	if (dc->stop_when_cache_set_failed == BCH_CACHED_DEV_STOP_ALWAYS) {
		FUNC2("stop_when_cache_set_failed of %s is \"always\", stop it for failed cache set %pU.",
			d->disk->disk_name, c->sb.set_uuid);
		FUNC1(d);
	} else if (FUNC0(&dc->has_dirty)) {
		/*
		 * dc->stop_when_cache_set_failed == BCH_CACHED_STOP_AUTO
		 * and dc->has_dirty == 1
		 */
		FUNC2("stop_when_cache_set_failed of %s is \"auto\" and cache is dirty, stop it to avoid potential data corruption.",
			d->disk->disk_name);
		/*
		 * There might be a small time gap that cache set is
		 * released but bcache device is not. Inside this time
		 * gap, regular I/O requests will directly go into
		 * backing device as no cache set attached to. This
		 * behavior may also introduce potential inconsistence
		 * data in writeback mode while cache is dirty.
		 * Therefore before calling bcache_device_stop() due
		 * to a broken cache device, dc->io_disable should be
		 * explicitly set to true.
		 */
		dc->io_disable = true;
		/* make others know io_disable is true earlier */
		FUNC3();
		FUNC1(d);
	} else {
		/*
		 * dc->stop_when_cache_set_failed == BCH_CACHED_STOP_AUTO
		 * and dc->has_dirty == 0
		 */
		FUNC2("stop_when_cache_set_failed of %s is \"auto\" and cache is clean, keep it alive.",
			d->disk->disk_name);
	}
}