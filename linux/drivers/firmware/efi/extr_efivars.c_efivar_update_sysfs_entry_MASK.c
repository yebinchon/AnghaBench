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
struct TYPE_2__ {int /*<<< orphan*/  VendorGuid; int /*<<< orphan*/ * VariableName; } ;
struct efivar_entry {TYPE_1__ var; } ;
typedef  int /*<<< orphan*/  efi_guid_t ;
typedef  int /*<<< orphan*/  efi_char16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  efivar_sysfs_list ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(efi_char16_t *name, efi_guid_t vendor,
				     unsigned long name_size, void *data)
{
	struct efivar_entry *entry = data;

	if (FUNC0(name, vendor, &efivar_sysfs_list, false))
		return 0;

	FUNC1(entry->var.VariableName, name, name_size);
	FUNC1(&(entry->var.VendorGuid), &vendor, sizeof(efi_guid_t));

	return 1;
}