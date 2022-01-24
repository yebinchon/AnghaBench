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
struct fw_cfg_sysfs_entry {int /*<<< orphan*/  kobj; int /*<<< orphan*/  name; int /*<<< orphan*/  select; int /*<<< orphan*/  size; } ;
struct fw_cfg_file {int /*<<< orphan*/  name; int /*<<< orphan*/  select; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FW_CFG_MAX_FILE_PATH ; 
 int /*<<< orphan*/  FW_CFG_VMCOREINFO_FILENAME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  fw_cfg_fname_kset ; 
 int /*<<< orphan*/  fw_cfg_sel_ko ; 
 int /*<<< orphan*/  fw_cfg_sysfs_attr_raw ; 
 int /*<<< orphan*/  FUNC4 (struct fw_cfg_sysfs_entry*) ; 
 int /*<<< orphan*/  fw_cfg_sysfs_entry_ktype ; 
 scalar_t__ FUNC5 (struct fw_cfg_file const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct fw_cfg_sysfs_entry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct fw_cfg_sysfs_entry* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(const struct fw_cfg_file *f)
{
	int err;
	struct fw_cfg_sysfs_entry *entry;

#ifdef CONFIG_CRASH_CORE
	if (fw_cfg_dma_enabled() &&
		strcmp(f->name, FW_CFG_VMCOREINFO_FILENAME) == 0 &&
		!is_kdump_kernel()) {
		if (fw_cfg_write_vmcoreinfo(f) < 0)
			pr_warn("fw_cfg: failed to write vmcoreinfo");
	}
#endif

	/* allocate new entry */
	entry = FUNC10(sizeof(*entry), GFP_KERNEL);
	if (!entry)
		return -ENOMEM;

	/* set file entry information */
	entry->size = FUNC1(f->size);
	entry->select = FUNC0(f->select);
	FUNC11(entry->name, f->name, FW_CFG_MAX_FILE_PATH);

	/* register entry under "/sys/firmware/qemu_fw_cfg/by_key/" */
	err = FUNC9(&entry->kobj, &fw_cfg_sysfs_entry_ktype,
				   fw_cfg_sel_ko, "%d", entry->select);
	if (err)
		goto err_register;

	/* add raw binary content access */
	err = FUNC14(&entry->kobj, &fw_cfg_sysfs_attr_raw);
	if (err)
		goto err_add_raw;

	/* try adding "/sys/firmware/qemu_fw_cfg/by_name/" symlink */
	FUNC2(fw_cfg_fname_kset, &entry->kobj, entry->name);

	/* success, add entry to global cache */
	FUNC4(entry);
	return 0;

err_add_raw:
	FUNC8(&entry->kobj);
err_register:
	FUNC7(entry);
	return err;
}