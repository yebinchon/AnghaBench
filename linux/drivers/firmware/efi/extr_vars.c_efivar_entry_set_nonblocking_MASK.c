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
typedef  int /*<<< orphan*/  u32 ;
struct efivar_operations {scalar_t__ (* set_variable_nonblocking ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,void*) ;} ;
typedef  scalar_t__ efi_status_t ;
typedef  int /*<<< orphan*/  efi_guid_t ;
typedef  int /*<<< orphan*/  efi_char16_t ;
struct TYPE_2__ {struct efivar_operations* ops; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ EFI_SUCCESS ; 
 int EINVAL ; 
 int ENOSPC ; 
 TYPE_1__* __efivars ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  efivars_lock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(efi_char16_t *name, efi_guid_t vendor,
			     u32 attributes, unsigned long size, void *data)
{
	const struct efivar_operations *ops;
	efi_status_t status;

	if (FUNC1(&efivars_lock))
		return -EBUSY;

	if (!__efivars) {
		FUNC5(&efivars_lock);
		return -EINVAL;
	}

	status = FUNC0(attributes,
					    size + FUNC4(name, 1024));
	if (status != EFI_SUCCESS) {
		FUNC5(&efivars_lock);
		return -ENOSPC;
	}

	ops = __efivars->ops;
	status = ops->set_variable_nonblocking(name, &vendor, attributes,
					       size, data);

	FUNC5(&efivars_lock);
	return FUNC2(status);
}