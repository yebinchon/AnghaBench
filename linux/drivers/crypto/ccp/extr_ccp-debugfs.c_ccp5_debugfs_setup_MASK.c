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
struct dentry {int dummy; } ;
struct ccp_device {char* name; int cmd_q_count; int id; struct dentry* debugfs_instance; struct ccp_device* cmd_q; } ;
struct ccp_cmd_queue {char* name; int cmd_q_count; int id; struct dentry* debugfs_instance; struct ccp_cmd_queue* cmd_q; } ;

/* Variables and functions */
 char* KBUILD_MODNAME ; 
 int MAX_NAME_LEN ; 
 struct dentry* ccp_debugfs_dir ; 
 int /*<<< orphan*/  ccp_debugfs_info_ops ; 
 int /*<<< orphan*/  ccp_debugfs_lock ; 
 int /*<<< orphan*/  ccp_debugfs_queue_ops ; 
 int /*<<< orphan*/  ccp_debugfs_stats_ops ; 
 void* FUNC0 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,struct ccp_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 

void FUNC6(struct ccp_device *ccp)
{
	struct ccp_cmd_queue *cmd_q;
	char name[MAX_NAME_LEN + 1];
	struct dentry *debugfs_q_instance;
	int i;

	if (!FUNC2())
		return;

	FUNC3(&ccp_debugfs_lock);
	if (!ccp_debugfs_dir)
		ccp_debugfs_dir = FUNC0(KBUILD_MODNAME, NULL);
	FUNC4(&ccp_debugfs_lock);

	ccp->debugfs_instance = FUNC0(ccp->name, ccp_debugfs_dir);

	FUNC1("info", 0400, ccp->debugfs_instance, ccp,
			    &ccp_debugfs_info_ops);

	FUNC1("stats", 0600, ccp->debugfs_instance, ccp,
			    &ccp_debugfs_stats_ops);

	for (i = 0; i < ccp->cmd_q_count; i++) {
		cmd_q = &ccp->cmd_q[i];

		FUNC5(name, MAX_NAME_LEN - 1, "q%d", cmd_q->id);

		debugfs_q_instance =
			FUNC0(name, ccp->debugfs_instance);

		FUNC1("stats", 0600, debugfs_q_instance, cmd_q,
				    &ccp_debugfs_queue_ops);
	}

	return;
}