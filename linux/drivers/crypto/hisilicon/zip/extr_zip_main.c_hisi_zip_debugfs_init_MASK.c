#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct dentry* debug_root; } ;
struct hisi_qm {scalar_t__ fun_type; TYPE_1__ debug; TYPE_2__* pdev; } ;
struct hisi_zip {TYPE_3__* ctrl; struct hisi_qm qm; } ;
struct device {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_6__ {struct dentry* debug_root; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ QM_HW_PF ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct hisi_qm*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  hzip_debugfs_root ; 

__attribute__((used)) static int FUNC5(struct hisi_zip *hisi_zip)
{
	struct hisi_qm *qm = &hisi_zip->qm;
	struct device *dev = &qm->pdev->dev;
	struct dentry *dev_d;
	int ret;

	dev_d = FUNC0(FUNC2(dev), hzip_debugfs_root);
	if (!dev_d)
		return -ENOENT;

	qm->debug.debug_root = dev_d;
	ret = FUNC3(qm);
	if (ret)
		goto failed_to_create;

	if (qm->fun_type == QM_HW_PF) {
		hisi_zip->ctrl->debug_root = dev_d;
		ret = FUNC4(hisi_zip->ctrl);
		if (ret)
			goto failed_to_create;
	}

	return 0;

failed_to_create:
	FUNC1(hzip_debugfs_root);
	return ret;
}