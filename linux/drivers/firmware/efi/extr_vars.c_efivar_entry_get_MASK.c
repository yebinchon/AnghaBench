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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  VendorGuid; int /*<<< orphan*/  VariableName; } ;
struct efivar_entry {TYPE_2__ var; } ;
typedef  int /*<<< orphan*/  efi_status_t ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_variable ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long*,void*) ;} ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 TYPE_3__* __efivars ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  efivars_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct efivar_entry *entry, u32 *attributes,
		     unsigned long *size, void *data)
{
	efi_status_t status;

	if (FUNC0(&efivars_lock))
		return -EINTR;

	if (!__efivars) {
		FUNC3(&efivars_lock);
		return -EINVAL;
	}

	status = __efivars->ops->get_variable(entry->var.VariableName,
					      &entry->var.VendorGuid,
					      attributes, size, data);
	FUNC3(&efivars_lock);

	return FUNC1(status);
}