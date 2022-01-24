#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct efivar_operations {scalar_t__ (* set_variable ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,void*) ;scalar_t__ (* get_variable ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long*,int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  VendorGuid; int /*<<< orphan*/ * VariableName; } ;
struct efivar_entry {TYPE_1__ var; } ;
typedef  scalar_t__ efi_status_t ;
typedef  int /*<<< orphan*/  efi_guid_t ;
typedef  int /*<<< orphan*/  efi_char16_t ;
struct TYPE_4__ {struct efivar_operations* ops; } ;

/* Variables and functions */
 scalar_t__ EFI_BUFFER_TOO_SMALL ; 
 scalar_t__ EFI_NOT_FOUND ; 
 scalar_t__ EFI_SUCCESS ; 
 scalar_t__ EFI_UNSUPPORTED ; 
 int EINTR ; 
 int EINVAL ; 
 int ENOSPC ; 
 TYPE_2__* __efivars ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct efivar_entry*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,unsigned long) ; 
 int /*<<< orphan*/  efivars_lock ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct efivar_entry *entry, u32 attributes,
			      unsigned long *size, void *data, bool *set)
{
	const struct efivar_operations *ops;
	efi_char16_t *name = entry->var.VariableName;
	efi_guid_t *vendor = &entry->var.VendorGuid;
	efi_status_t status;
	int err;

	*set = false;

	if (FUNC4(*vendor, name, data, *size) == false)
		return -EINVAL;

	/*
	 * The lock here protects the get_variable call, the conditional
	 * set_variable call, and removal of the variable from the efivars
	 * list (in the case of an authenticated delete).
	 */
	if (FUNC1(&efivars_lock))
		return -EINTR;

	if (!__efivars) {
		err = -EINVAL;
		goto out;
	}

	/*
	 * Ensure that the available space hasn't shrunk below the safe level
	 */
	status = FUNC0(attributes, *size + FUNC7(name, 1024));
	if (status != EFI_SUCCESS) {
		if (status != EFI_UNSUPPORTED) {
			err = FUNC2(status);
			goto out;
		}

		if (*size > 65536) {
			err = -ENOSPC;
			goto out;
		}
	}

	ops = __efivars->ops;

	status = ops->set_variable(name, vendor, attributes, *size, data);
	if (status != EFI_SUCCESS) {
		err = FUNC2(status);
		goto out;
	}

	*set = true;

	/*
	 * Writing to the variable may have caused a change in size (which
	 * could either be an append or an overwrite), or the variable to be
	 * deleted. Perform a GetVariable() so we can tell what actually
	 * happened.
	 */
	*size = 0;
	status = ops->get_variable(entry->var.VariableName,
				   &entry->var.VendorGuid,
				   NULL, size, NULL);

	if (status == EFI_NOT_FOUND)
		FUNC3(entry);
	else
		FUNC8(&efivars_lock);

	if (status && status != EFI_BUFFER_TOO_SMALL)
		return FUNC2(status);

	return 0;

out:
	FUNC8(&efivars_lock);
	return err;

}