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
struct TYPE_2__ {struct dentry* qm_d; int /*<<< orphan*/  debug_root; } ;
struct hisi_qm {scalar_t__ fun_type; TYPE_1__ debug; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int CURRENT_Q ; 
 int DEBUG_FILE_NUM ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 scalar_t__ QM_HW_PF ; 
 struct dentry* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC2 (char*,int,struct dentry*,struct hisi_qm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct hisi_qm*,int) ; 
 int /*<<< orphan*/  qm_regs_fops ; 

int FUNC5(struct hisi_qm *qm)
{
	struct dentry *qm_d, *qm_regs;
	int i, ret;

	qm_d = FUNC1("qm", qm->debug.debug_root);
	if (FUNC0(qm_d))
		return -ENOENT;
	qm->debug.qm_d = qm_d;

	/* only show this in PF */
	if (qm->fun_type == QM_HW_PF)
		for (i = CURRENT_Q; i < DEBUG_FILE_NUM; i++)
			if (FUNC4(qm, i)) {
				ret = -ENOENT;
				goto failed_to_create;
			}

	qm_regs = FUNC2("qm_regs", 0444, qm->debug.qm_d, qm,
				      &qm_regs_fops);
	if (FUNC0(qm_regs)) {
		ret = -ENOENT;
		goto failed_to_create;
	}

	return 0;

failed_to_create:
	FUNC3(qm_d);
	return ret;
}