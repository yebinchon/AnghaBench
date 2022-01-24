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
struct r1conf {int /*<<< orphan*/  wait_barrier; int /*<<< orphan*/  device_lock; int /*<<< orphan*/ * nr_queued; int /*<<< orphan*/  retry_list; } ;
struct r1bio {int /*<<< orphan*/  retry_list; int /*<<< orphan*/  sector; struct mddev* mddev; } ;
struct mddev {int /*<<< orphan*/  thread; struct r1conf* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct r1bio *r1_bio)
{
	unsigned long flags;
	struct mddev *mddev = r1_bio->mddev;
	struct r1conf *conf = mddev->private;
	int idx;

	idx = FUNC3(r1_bio->sector);
	FUNC4(&conf->device_lock, flags);
	FUNC1(&r1_bio->retry_list, &conf->retry_list);
	FUNC0(&conf->nr_queued[idx]);
	FUNC5(&conf->device_lock, flags);

	FUNC6(&conf->wait_barrier);
	FUNC2(mddev->thread);
}