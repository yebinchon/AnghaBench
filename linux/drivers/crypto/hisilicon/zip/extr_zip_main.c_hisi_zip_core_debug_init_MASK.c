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
struct hisi_zip_ctrl {int /*<<< orphan*/  debug_root; struct hisi_zip* hisi_zip; } ;
struct hisi_qm {scalar_t__ io_base; TYPE_1__* pdev; } ;
struct hisi_zip {struct hisi_qm qm; } ;
struct device {int dummy; } ;
struct dentry {int dummy; } ;
struct debugfs_regset32 {scalar_t__ base; int /*<<< orphan*/  nregs; int /*<<< orphan*/  regs; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZIP_BUF_SIZE ; 
 int HZIP_COMP_CORE_NUM ; 
 int HZIP_CORE_NUM ; 
 scalar_t__* core_offsets ; 
 struct dentry* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC2 (char*,int,struct dentry*,struct debugfs_regset32*) ; 
 struct debugfs_regset32* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hzip_dfx_regs ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int FUNC5(struct hisi_zip_ctrl *ctrl)
{
	struct hisi_zip *hisi_zip = ctrl->hisi_zip;
	struct hisi_qm *qm = &hisi_zip->qm;
	struct device *dev = &qm->pdev->dev;
	struct debugfs_regset32 *regset;
	struct dentry *tmp_d, *tmp;
	char buf[HZIP_BUF_SIZE];
	int i;

	for (i = 0; i < HZIP_CORE_NUM; i++) {
		if (i < HZIP_COMP_CORE_NUM)
			FUNC4(buf, "comp_core%d", i);
		else
			FUNC4(buf, "decomp_core%d", i - HZIP_COMP_CORE_NUM);

		tmp_d = FUNC1(buf, ctrl->debug_root);
		if (!tmp_d)
			return -ENOENT;

		regset = FUNC3(dev, sizeof(*regset), GFP_KERNEL);
		if (!regset)
			return -ENOENT;

		regset->regs = hzip_dfx_regs;
		regset->nregs = FUNC0(hzip_dfx_regs);
		regset->base = qm->io_base + core_offsets[i];

		tmp = FUNC2("regs", 0444, tmp_d, regset);
		if (!tmp)
			return -ENOENT;
	}

	return 0;
}