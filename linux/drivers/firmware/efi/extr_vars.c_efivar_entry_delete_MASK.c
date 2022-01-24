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
struct efivar_operations {scalar_t__ (* set_variable ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  VendorGuid; int /*<<< orphan*/  VariableName; } ;
struct efivar_entry {TYPE_1__ var; } ;
typedef  scalar_t__ efi_status_t ;
struct TYPE_4__ {struct efivar_operations* ops; } ;

/* Variables and functions */
 scalar_t__ EFI_NOT_FOUND ; 
 scalar_t__ EFI_SUCCESS ; 
 int EINTR ; 
 int EINVAL ; 
 TYPE_2__* __efivars ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct efivar_entry*) ; 
 int /*<<< orphan*/  efivars_lock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct efivar_entry *entry)
{
	const struct efivar_operations *ops;
	efi_status_t status;

	if (FUNC0(&efivars_lock))
		return -EINTR;

	if (!__efivars) {
		FUNC4(&efivars_lock);
		return -EINVAL;
	}
	ops = __efivars->ops;
	status = ops->set_variable(entry->var.VariableName,
				   &entry->var.VendorGuid,
				   0, 0, NULL);
	if (!(status == EFI_SUCCESS || status == EFI_NOT_FOUND)) {
		FUNC4(&efivars_lock);
		return FUNC1(status);
	}

	FUNC2(entry);
	return 0;
}