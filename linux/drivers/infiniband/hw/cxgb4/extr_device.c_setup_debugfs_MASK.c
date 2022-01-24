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
struct c4iw_dev {int /*<<< orphan*/  debugfs_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_IWUSR ; 
 scalar_t__ c4iw_wr_log ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ep_debugfs_fops ; 
 int /*<<< orphan*/  qp_debugfs_fops ; 
 int /*<<< orphan*/  stag_debugfs_fops ; 
 int /*<<< orphan*/  stats_debugfs_fops ; 
 int /*<<< orphan*/  wr_log_debugfs_fops ; 

__attribute__((used)) static void FUNC1(struct c4iw_dev *devp)
{
	FUNC0("qps", S_IWUSR, devp->debugfs_root,
				 (void *)devp, &qp_debugfs_fops, 4096);

	FUNC0("stags", S_IWUSR, devp->debugfs_root,
				 (void *)devp, &stag_debugfs_fops, 4096);

	FUNC0("stats", S_IWUSR, devp->debugfs_root,
				 (void *)devp, &stats_debugfs_fops, 4096);

	FUNC0("eps", S_IWUSR, devp->debugfs_root,
				 (void *)devp, &ep_debugfs_fops, 4096);

	if (c4iw_wr_log)
		FUNC0("wr_log", S_IWUSR, devp->debugfs_root,
					 (void *)devp, &wr_log_debugfs_fops, 4096);
}