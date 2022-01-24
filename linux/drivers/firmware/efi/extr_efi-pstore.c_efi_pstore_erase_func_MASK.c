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
struct TYPE_2__ {int /*<<< orphan*/  VariableName; int /*<<< orphan*/  VendorGuid; } ;
struct efivar_entry {int deleting; int /*<<< orphan*/  list; scalar_t__ scanning; TYPE_1__ var; } ;
typedef  int /*<<< orphan*/  efi_guid_t ;
typedef  int /*<<< orphan*/  efi_char16_t ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_EFI_CRASH_GUID ; 
 int /*<<< orphan*/  FUNC0 (struct efivar_entry*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC5(struct efivar_entry *entry, void *data)
{
	efi_char16_t *efi_name = data;
	efi_guid_t vendor = LINUX_EFI_CRASH_GUID;
	unsigned long ucs2_len = FUNC3(efi_name);

	if (FUNC1(entry->var.VendorGuid, vendor))
		return 0;

	if (FUNC4(entry->var.VariableName, efi_name, (size_t)ucs2_len))
		return 0;

	if (entry->scanning) {
		/*
		 * Skip deletion because this entry will be deleted
		 * after scanning is completed.
		 */
		entry->deleting = true;
	} else
		FUNC2(&entry->list);

	/* found */
	FUNC0(entry);

	return 1;
}