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
struct pmu_private {int /*<<< orphan*/  list; scalar_t__ backlight_locker; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; scalar_t__ rb_put; scalar_t__ rb_get; } ;
struct inode {int dummy; } ;
struct file {struct pmu_private* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  all_pmu_pvt ; 
 int /*<<< orphan*/  all_pvt_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pmu_private* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmu_info_proc_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC8(struct inode *inode, struct file *file)
{
	struct pmu_private *pp;
	unsigned long flags;

	pp = FUNC1(sizeof(struct pmu_private), GFP_KERNEL);
	if (!pp)
		return -ENOMEM;
	pp->rb_get = pp->rb_put = 0;
	FUNC5(&pp->lock);
	FUNC0(&pp->wait);
	FUNC3(&pmu_info_proc_mutex);
	FUNC6(&all_pvt_lock, flags);
#if defined(CONFIG_INPUT_ADBHID) && defined(CONFIG_PMAC_BACKLIGHT)
	pp->backlight_locker = 0;
#endif
	FUNC2(&pp->list, &all_pmu_pvt);
	FUNC7(&all_pvt_lock, flags);
	file->private_data = pp;
	FUNC4(&pmu_info_proc_mutex);
	return 0;
}