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
struct r5worker_group {struct r5worker_group* workers; } ;
struct r5conf {unsigned int worker_cnt_per_group; int group_cnt; int /*<<< orphan*/  device_lock; struct r5worker_group* worker_groups; } ;
struct mddev {struct r5conf* private; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 size_t PAGE_SIZE ; 
 int FUNC0 (struct r5conf*,unsigned int,int*,int*,struct r5worker_group**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r5worker_group*) ; 
 scalar_t__ FUNC3 (char const*,int,unsigned int*) ; 
 int FUNC4 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mddev*) ; 
 int /*<<< orphan*/  raid5_wq ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC10(struct mddev *mddev, const char *page, size_t len)
{
	struct r5conf *conf;
	unsigned int new;
	int err;
	struct r5worker_group *new_groups, *old_groups;
	int group_cnt, worker_cnt_per_group;

	if (len >= PAGE_SIZE)
		return -EINVAL;
	if (FUNC3(page, 10, &new))
		return -EINVAL;
	/* 8192 should be big enough */
	if (new > 8192)
		return -EINVAL;

	err = FUNC4(mddev);
	if (err)
		return err;
	conf = mddev->private;
	if (!conf)
		err = -ENODEV;
	else if (new != conf->worker_cnt_per_group) {
		FUNC6(mddev);

		old_groups = conf->worker_groups;
		if (old_groups)
			FUNC1(raid5_wq);

		err = FUNC0(conf, new,
					  &group_cnt, &worker_cnt_per_group,
					  &new_groups);
		if (!err) {
			FUNC8(&conf->device_lock);
			conf->group_cnt = group_cnt;
			conf->worker_cnt_per_group = worker_cnt_per_group;
			conf->worker_groups = new_groups;
			FUNC9(&conf->device_lock);

			if (old_groups)
				FUNC2(old_groups[0].workers);
			FUNC2(old_groups);
		}
		FUNC5(mddev);
	}
	FUNC7(mddev);

	return err ?: len;
}