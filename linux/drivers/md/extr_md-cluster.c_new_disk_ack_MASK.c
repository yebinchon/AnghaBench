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
struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int /*<<< orphan*/  newdisk_completion; int /*<<< orphan*/  no_new_dev_lockres; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MD_CLUSTER_WAITING_FOR_NEWDISK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mddev *mddev, bool ack)
{
	struct md_cluster_info *cinfo = mddev->cluster_info;

	if (!FUNC4(MD_CLUSTER_WAITING_FOR_NEWDISK, &cinfo->state)) {
		FUNC3("md-cluster(%s): Spurious cluster confirmation\n", FUNC2(mddev));
		return -EINVAL;
	}

	if (ack)
		FUNC1(cinfo->no_new_dev_lockres);
	FUNC0(&cinfo->newdisk_completion);
	return 0;
}