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
struct TYPE_2__ {scalar_t__ Data; int /*<<< orphan*/  VendorGuid; int /*<<< orphan*/ * VariableName; } ;
struct efivar_entry {TYPE_1__ var; } ;
typedef  int /*<<< orphan*/  guid ;
typedef  int /*<<< orphan*/  efi_guid_t ;
typedef  int /*<<< orphan*/  efi_char16_t ;

/* Variables and functions */
 int EFI_VARIABLE_BOOTSERVICE_ACCESS ; 
 int EFI_VARIABLE_NON_VOLATILE ; 
 int EFI_VARIABLE_RUNTIME_ACCESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LINUX_EFI_LOADER_ENTRY_GUID ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct efivar_entry*) ; 
 struct efivar_entry* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(const char *name, const char *value)
{
	int ret;
	efi_guid_t guid = LINUX_EFI_LOADER_ENTRY_GUID;
	struct efivar_entry *entry;
	size_t size = (FUNC6(value) + 1) * sizeof(efi_char16_t);

	if (size > sizeof(entry->var.Data)) {
		FUNC5("value is too large (%zu bytes) for '%s' EFI variable\n", size, name);
		return -EINVAL;
	}

	entry = FUNC3(sizeof(*entry), GFP_KERNEL);
	if (!entry) {
		FUNC5("failed to allocate efivar entry for '%s' EFI variable\n", name);
		return -ENOMEM;
	}

	FUNC0(name, entry->var.VariableName);
	FUNC0(value, (efi_char16_t *)entry->var.Data);
	FUNC4(&entry->var.VendorGuid, &guid, sizeof(guid));

	ret = FUNC1(entry->var.VariableName,
				    entry->var.VendorGuid,
				    EFI_VARIABLE_NON_VOLATILE
				    | EFI_VARIABLE_BOOTSERVICE_ACCESS
				    | EFI_VARIABLE_RUNTIME_ACCESS,
				    false, size, entry->var.Data);

	if (ret)
		FUNC5("failed to set %s EFI variable: 0x%x\n",
		       name, ret);

	FUNC2(entry);
	return ret;
}