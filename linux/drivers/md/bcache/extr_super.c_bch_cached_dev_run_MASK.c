#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct closure {int dummy; } ;
struct bcache_device {int /*<<< orphan*/  kobj; int /*<<< orphan*/  disk; int /*<<< orphan*/  c; } ;
struct TYPE_5__ {char* uuid; int /*<<< orphan*/  label; } ;
struct cached_dev {int /*<<< orphan*/  status_update_thread; struct bcache_device disk; int /*<<< orphan*/  bdev; TYPE_2__ sb; int /*<<< orphan*/  backing_dev_name; int /*<<< orphan*/  running; scalar_t__ io_disable; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ BDEV_STATE_NONE ; 
 int /*<<< orphan*/  BDEV_STATE_STALE ; 
 int EBUSY ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  SB_LABEL_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cached_dev*,struct closure*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cached_dev_status_update ; 
 int /*<<< orphan*/  FUNC7 (struct closure*) ; 
 int /*<<< orphan*/  FUNC8 (struct closure*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct cached_dev*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

int FUNC19(struct cached_dev *dc)
{
	struct bcache_device *d = &dc->disk;
	char *buf = FUNC12(dc->sb.label, SB_LABEL_SIZE, GFP_KERNEL);
	char *env[] = {
		"DRIVER=bcache",
		FUNC10(GFP_KERNEL, "CACHED_UUID=%pU", dc->sb.uuid),
		FUNC10(GFP_KERNEL, "CACHED_LABEL=%s", buf ? : ""),
		NULL,
	};

	if (dc->io_disable) {
		FUNC15("I/O disabled on cached dev %s",
		       dc->backing_dev_name);
		FUNC11(env[1]);
		FUNC11(env[2]);
		FUNC11(buf);
		return -EIO;
	}

	if (FUNC4(&dc->running, 1)) {
		FUNC11(env[1]);
		FUNC11(env[2]);
		FUNC11(buf);
		FUNC16("cached dev %s is running already",
		       dc->backing_dev_name);
		return -EBUSY;
	}

	if (!d->c &&
	    FUNC0(&dc->sb) != BDEV_STATE_NONE) {
		struct closure cl;

		FUNC7(&cl);

		FUNC2(&dc->sb, BDEV_STATE_STALE);
		FUNC5(dc, &cl);
		FUNC8(&cl);
	}

	FUNC3(d->disk);
	FUNC6(dc->bdev, dc->disk.disk);
	/*
	 * won't show up in the uevent file, use udevadm monitor -e instead
	 * only class / kset properties are persistent
	 */
	FUNC13(&FUNC9(d->disk)->kobj, KOBJ_CHANGE, env);
	FUNC11(env[1]);
	FUNC11(env[2]);
	FUNC11(buf);

	if (FUNC18(&d->kobj, &FUNC9(d->disk)->kobj, "dev") ||
	    FUNC18(&FUNC9(d->disk)->kobj,
			      &d->kobj, "bcache")) {
		FUNC15("Couldn't create bcache dev <-> disk sysfs symlinks");
		return -ENOMEM;
	}

	dc->status_update_thread = FUNC14(cached_dev_status_update,
					       dc, "bcache_status_update");
	if (FUNC1(dc->status_update_thread)) {
		FUNC17("failed to create bcache_status_update kthread, "
			"continue to run without monitoring backing "
			"device status");
	}

	return 0;
}