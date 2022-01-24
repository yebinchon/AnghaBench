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
struct mddev {int /*<<< orphan*/  flags; int /*<<< orphan*/  recovery; struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int /*<<< orphan*/  resync_lockres; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_CLOSING ; 
 int /*<<< orphan*/  MD_RESYNCING_REMOTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mddev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mddev *mddev)
{
	struct md_cluster_info *cinfo = mddev->cluster_info;
	int ret = 0;

	FUNC0(MD_RESYNCING_REMOTE, &mddev->recovery);

	/*
	 * If resync thread is interrupted so we can't say resync is finished,
	 * another node will launch resync thread to continue.
	 */
	if (!FUNC3(MD_CLOSING, &mddev->flags))
		ret = FUNC2(mddev, 0, 0);
	FUNC1(cinfo->resync_lockres);
	return ret;
}