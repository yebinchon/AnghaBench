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
struct mddev {TYPE_1__* pers; struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int /*<<< orphan*/  suspend_lock; scalar_t__ suspend_lo; scalar_t__ suspend_hi; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* quiesce ) (struct mddev*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*,int) ; 

__attribute__((used)) static void FUNC4(struct mddev *mddev, int slot)
{
	struct md_cluster_info *cinfo = mddev->cluster_info;
	mddev->pers->quiesce(mddev, 1);
	FUNC0(&cinfo->suspend_lock);
	cinfo->suspend_hi = 0;
	cinfo->suspend_lo = 0;
	FUNC1(&cinfo->suspend_lock);
	mddev->pers->quiesce(mddev, 0);
}