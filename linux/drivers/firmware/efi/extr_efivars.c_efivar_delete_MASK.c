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
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct efivar_entry {int /*<<< orphan*/  scanning; } ;
struct efi_variable {int /*<<< orphan*/  VendorGuid; int /*<<< orphan*/ * VariableName; } ;
struct compat_efi_variable {int /*<<< orphan*/  VendorGuid; int /*<<< orphan*/ * VariableName; } ;
struct bin_attribute {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  efi_guid_t ;
typedef  int /*<<< orphan*/  efi_char16_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EACCES ; 
 int EINTR ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct efivar_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct efivar_entry* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  efivar_sysfs_list ; 
 int /*<<< orphan*/  FUNC5 (struct efivar_entry*) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static ssize_t FUNC7(struct file *filp, struct kobject *kobj,
			     struct bin_attribute *bin_attr,
			     char *buf, loff_t pos, size_t count)
{
	struct efi_variable *del_var = (struct efi_variable *)buf;
	struct compat_efi_variable *compat;
	struct efivar_entry *entry;
	efi_char16_t *name;
	efi_guid_t vendor;
	int err = 0;

	if (!FUNC1(CAP_SYS_ADMIN))
		return -EACCES;

	if (FUNC6()) {
		if (count != sizeof(*compat))
			return -EINVAL;

		compat = (struct compat_efi_variable *)buf;
		name = compat->VariableName;
		vendor = compat->VendorGuid;
	} else {
		if (count != sizeof(*del_var))
			return -EINVAL;

		name = del_var->VariableName;
		vendor = del_var->VendorGuid;
	}

	if (FUNC3())
		return -EINTR;
	entry = FUNC2(name, vendor, &efivar_sysfs_list, true);
	if (!entry)
		err = -EINVAL;
	else if (FUNC0(entry))
		err = -EIO;

	if (err) {
		FUNC4();
		return err;
	}

	if (!entry->scanning) {
		FUNC4();
		FUNC5(entry);
	} else
		FUNC4();

	/* It's dead Jim.... */
	return count;
}