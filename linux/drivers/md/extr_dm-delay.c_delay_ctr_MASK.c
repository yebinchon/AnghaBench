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
struct dm_target {char* error; int num_flush_bios; int num_discard_bios; int per_io_data_size; struct delay_c* private; } ;
struct dm_delay_info {int dummy; } ;
struct delay_c {unsigned int argc; int /*<<< orphan*/  kdelayd_wq; int /*<<< orphan*/  flush; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  may_delay; int /*<<< orphan*/  timer_lock; int /*<<< orphan*/  delayed_bios; int /*<<< orphan*/  flush_expired_bios; int /*<<< orphan*/  delay_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct dm_target*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_target*) ; 
 int /*<<< orphan*/  flush_expired_bios ; 
 int /*<<< orphan*/  handle_delayed_timer ; 
 struct delay_c* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct dm_target *ti, unsigned int argc, char **argv)
{
	struct delay_c *dc;
	int ret;

	if (argc != 3 && argc != 6 && argc != 9) {
		ti->error = "Requires exactly 3, 6 or 9 arguments";
		return -EINVAL;
	}

	dc = FUNC7(sizeof(*dc), GFP_KERNEL);
	if (!dc) {
		ti->error = "Cannot allocate context";
		return -ENOMEM;
	}

	ti->private = dc;
	FUNC9(&dc->delay_timer, handle_delayed_timer, 0);
	FUNC2(&dc->flush_expired_bios, flush_expired_bios);
	FUNC1(&dc->delayed_bios);
	FUNC8(&dc->timer_lock);
	FUNC4(&dc->may_delay, 1);
	dc->argc = argc;

	ret = FUNC5(ti, &dc->read, argv);
	if (ret)
		goto bad;

	if (argc == 3) {
		ret = FUNC5(ti, &dc->write, argv);
		if (ret)
			goto bad;
		ret = FUNC5(ti, &dc->flush, argv);
		if (ret)
			goto bad;
		goto out;
	}

	ret = FUNC5(ti, &dc->write, argv + 3);
	if (ret)
		goto bad;
	if (argc == 6) {
		ret = FUNC5(ti, &dc->flush, argv + 3);
		if (ret)
			goto bad;
		goto out;
	}

	ret = FUNC5(ti, &dc->flush, argv + 6);
	if (ret)
		goto bad;

out:
	dc->kdelayd_wq = FUNC3("kdelayd", WQ_MEM_RECLAIM, 0);
	if (!dc->kdelayd_wq) {
		ret = -EINVAL;
		FUNC0("Couldn't start kdelayd");
		goto bad;
	}

	ti->num_flush_bios = 1;
	ti->num_discard_bios = 1;
	ti->per_io_data_size = sizeof(struct dm_delay_info);
	return 0;

bad:
	FUNC6(ti);
	return ret;
}