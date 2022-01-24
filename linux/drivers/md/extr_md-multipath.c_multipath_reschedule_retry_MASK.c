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
struct multipath_bh {int /*<<< orphan*/  retry_list; struct mddev* mddev; } ;
struct mpconf {int /*<<< orphan*/  device_lock; int /*<<< orphan*/  retry_list; } ;
struct mddev {int /*<<< orphan*/  thread; struct mpconf* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4 (struct multipath_bh *mp_bh)
{
	unsigned long flags;
	struct mddev *mddev = mp_bh->mddev;
	struct mpconf *conf = mddev->private;

	FUNC2(&conf->device_lock, flags);
	FUNC0(&mp_bh->retry_list, &conf->retry_list);
	FUNC3(&conf->device_lock, flags);
	FUNC1(mddev->thread);
}