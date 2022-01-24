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
struct resync_info {int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;
struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {scalar_t__ suspend_lo; scalar_t__ suspend_hi; } ;
struct TYPE_2__ {int /*<<< orphan*/  sb_lvbptr; } ;
struct dlm_lock_resource {TYPE_1__ lksb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_CR ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_lock_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lock_resource*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resync_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct mddev *mddev,
			    struct dlm_lock_resource *lockres)
{
	struct resync_info ri;
	struct md_cluster_info *cinfo = mddev->cluster_info;
	int ret = 0;

	FUNC0(lockres, DLM_LOCK_CR);
	FUNC3(&ri, lockres->lksb.sb_lvbptr, sizeof(struct resync_info));
	if (FUNC2(ri.hi) > 0) {
		cinfo->suspend_hi = FUNC2(ri.hi);
		cinfo->suspend_lo = FUNC2(ri.lo);
		ret = 1;
	}
	FUNC1(lockres);
	return ret;
}