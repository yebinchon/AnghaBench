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
typedef  int /*<<< orphan*/  efi_status_t ;
typedef  int /*<<< orphan*/  efi_guid_t ;
typedef  int /*<<< orphan*/  efi_char16_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFI_ABORTED ; 
 int /*<<< orphan*/  EFI_GET_NEXT_VARIABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  efi_runtime_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static efi_status_t FUNC3(unsigned long *name_size,
					       efi_char16_t *name,
					       efi_guid_t *vendor)
{
	efi_status_t status;

	if (FUNC0(&efi_runtime_lock))
		return EFI_ABORTED;
	status = FUNC1(EFI_GET_NEXT_VARIABLE, name_size, name, vendor,
				NULL, NULL);
	FUNC2(&efi_runtime_lock);
	return status;
}