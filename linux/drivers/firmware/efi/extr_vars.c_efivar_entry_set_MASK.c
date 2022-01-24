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
struct list_head {int dummy; } ;
struct efivar_operations {scalar_t__ (* set_variable ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,void*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  VendorGuid; int /*<<< orphan*/ * VariableName; } ;
struct efivar_entry {TYPE_1__ var; } ;
typedef  scalar_t__ efi_status_t ;
typedef  int /*<<< orphan*/  efi_guid_t ;
typedef  int /*<<< orphan*/  efi_char16_t ;
struct TYPE_4__ {struct efivar_operations* ops; } ;

/* Variables and functions */
 int EEXIST ; 
 scalar_t__ EFI_SUCCESS ; 
 scalar_t__ EFI_UNSUPPORTED ; 
 int EINTR ; 
 int EINVAL ; 
 TYPE_2__* __efivars ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct list_head*,int) ; 
 int /*<<< orphan*/  efivars_lock ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,void*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct efivar_entry *entry, u32 attributes,
		     unsigned long size, void *data, struct list_head *head)
{
	const struct efivar_operations *ops;
	efi_status_t status;
	efi_char16_t *name = entry->var.VariableName;
	efi_guid_t vendor = entry->var.VendorGuid;

	if (FUNC1(&efivars_lock))
		return -EINTR;

	if (!__efivars) {
		FUNC6(&efivars_lock);
		return -EINVAL;
	}
	ops = __efivars->ops;
	if (head && FUNC3(name, vendor, head, false)) {
		FUNC6(&efivars_lock);
		return -EEXIST;
	}

	status = FUNC0(attributes, size + FUNC5(name, 1024));
	if (status == EFI_SUCCESS || status == EFI_UNSUPPORTED)
		status = ops->set_variable(name, &vendor,
					   attributes, size, data);

	FUNC6(&efivars_lock);

	return FUNC2(status);

}