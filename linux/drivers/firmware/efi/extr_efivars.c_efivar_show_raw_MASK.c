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
struct efi_variable {int DataSize; int /*<<< orphan*/  Attributes; int /*<<< orphan*/  VendorGuid; struct efi_variable* Data; struct efi_variable* VariableName; } ;
struct efivar_entry {struct efi_variable var; } ;
struct compat_efi_variable {char* VariableName; char* Data; int DataSize; int /*<<< orphan*/  Attributes; int /*<<< orphan*/  VendorGuid; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EFI_VAR_NAME_LEN ; 
 size_t EIO ; 
 scalar_t__ FUNC0 (struct efivar_entry*,int /*<<< orphan*/ *,int*,struct efi_variable*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,struct efi_variable*,size_t) ; 

__attribute__((used)) static ssize_t
FUNC3(struct efivar_entry *entry, char *buf)
{
	struct efi_variable *var = &entry->var;
	struct compat_efi_variable *compat;
	size_t size;

	if (!entry || !buf)
		return 0;

	var->DataSize = 1024;
	if (FUNC0(entry, &entry->var.Attributes,
			     &entry->var.DataSize, entry->var.Data))
		return -EIO;

	if (FUNC1()) {
		compat = (struct compat_efi_variable *)buf;

		size = sizeof(*compat);
		FUNC2(compat->VariableName, var->VariableName,
			EFI_VAR_NAME_LEN);
		FUNC2(compat->Data, var->Data, sizeof(compat->Data));

		compat->VendorGuid = var->VendorGuid;
		compat->DataSize = var->DataSize;
		compat->Attributes = var->Attributes;
	} else {
		size = sizeof(*var);
		FUNC2(buf, var, size);
	}

	return size;
}