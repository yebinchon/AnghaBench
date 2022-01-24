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
struct platform_device {int dummy; } ;
typedef  int /*<<< orphan*/  rev ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FW_CFG_ID ; 
 int FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  fw_cfg_fname_kset ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  fw_cfg_rev ; 
 TYPE_1__ fw_cfg_rev_attr ; 
 scalar_t__ fw_cfg_sel_ko ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  fw_cfg_top_ko ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	int err;
	__le32 rev;

	/* NOTE: If we supported multiple fw_cfg devices, we'd first create
	 * a subdirectory named after e.g. pdev->id, then hang per-device
	 * by_key (and by_name) subdirectories underneath it. However, only
	 * one fw_cfg device exist system-wide, so if one was already found
	 * earlier, we might as well stop here.
	 */
	if (fw_cfg_sel_ko)
		return -EBUSY;

	/* create by_key and by_name subdirs of /sys/firmware/qemu_fw_cfg/ */
	err = -ENOMEM;
	fw_cfg_sel_ko = FUNC7("by_key", fw_cfg_top_ko);
	if (!fw_cfg_sel_ko)
		goto err_sel;
	fw_cfg_fname_kset = FUNC8("by_name", NULL, fw_cfg_top_ko);
	if (!fw_cfg_fname_kset)
		goto err_name;

	/* initialize fw_cfg device i/o from platform data */
	err = FUNC0(pdev);
	if (err)
		goto err_probe;

	/* get revision number, add matching top-level attribute */
	err = FUNC4(FW_CFG_ID, &rev, 0, sizeof(rev));
	if (err < 0)
		goto err_probe;

	fw_cfg_rev = FUNC9(rev);
	err = FUNC11(fw_cfg_top_ko, &fw_cfg_rev_attr.attr);
	if (err)
		goto err_rev;

	/* process fw_cfg file directory entry, registering each file */
	err = FUNC5();
	if (err)
		goto err_dir;

	/* success */
	FUNC10("fw_cfg: loaded.\n");
	return 0;

err_dir:
	FUNC6();
	FUNC12(fw_cfg_top_ko, &fw_cfg_rev_attr.attr);
err_rev:
	FUNC1();
err_probe:
	FUNC3(fw_cfg_fname_kset);
err_name:
	FUNC2(fw_cfg_sel_ko);
err_sel:
	return err;
}