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
struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int /*<<< orphan*/  lockspace; } ;
struct TYPE_2__ {struct dlm_lock_resource* sb_lvbptr; } ;
struct dlm_lock_resource {int sync_locking_done; void (* bast ) (void*,int) ;struct dlm_lock_resource* name; TYPE_1__ lksb; int /*<<< orphan*/  flags; int /*<<< orphan*/  mode; struct mddev* mddev; int /*<<< orphan*/  ls; int /*<<< orphan*/  sync_locking; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LKF_CONVERT ; 
 int /*<<< orphan*/  DLM_LKF_EXPEDITE ; 
 int /*<<< orphan*/  DLM_LKF_VALBLK ; 
 int /*<<< orphan*/  DLM_LOCK_IV ; 
 int /*<<< orphan*/  DLM_LOCK_NL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LVB_SIZE ; 
 int FUNC0 (struct dlm_lock_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_lock_resource*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_lock_resource*,char*,int) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static struct dlm_lock_resource *FUNC7(struct mddev *mddev,
		char *name, void (*bastfn)(void *arg, int mode), int with_lvb)
{
	struct dlm_lock_resource *res = NULL;
	int ret, namelen;
	struct md_cluster_info *cinfo = mddev->cluster_info;

	res = FUNC3(sizeof(struct dlm_lock_resource), GFP_KERNEL);
	if (!res)
		return NULL;
	FUNC1(&res->sync_locking);
	res->sync_locking_done = false;
	res->ls = cinfo->lockspace;
	res->mddev = mddev;
	res->mode = DLM_LOCK_IV;
	namelen = FUNC6(name);
	res->name = FUNC3(namelen + 1, GFP_KERNEL);
	if (!res->name) {
		FUNC4("md-cluster: Unable to allocate resource name for resource %s\n", name);
		goto out_err;
	}
	FUNC5(res->name, name, namelen + 1);
	if (with_lvb) {
		res->lksb.sb_lvbptr = FUNC3(LVB_SIZE, GFP_KERNEL);
		if (!res->lksb.sb_lvbptr) {
			FUNC4("md-cluster: Unable to allocate LVB for resource %s\n", name);
			goto out_err;
		}
		res->flags = DLM_LKF_VALBLK;
	}

	if (bastfn)
		res->bast = bastfn;

	res->flags |= DLM_LKF_EXPEDITE;

	ret = FUNC0(res, DLM_LOCK_NL);
	if (ret) {
		FUNC4("md-cluster: Unable to lock NL on new lock resource %s\n", name);
		goto out_err;
	}
	res->flags &= ~DLM_LKF_EXPEDITE;
	res->flags |= DLM_LKF_CONVERT;

	return res;
out_err:
	FUNC2(res->lksb.sb_lvbptr);
	FUNC2(res->name);
	FUNC2(res);
	return NULL;
}