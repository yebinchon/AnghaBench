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
typedef  int u64 ;
typedef  int /*<<< orphan*/  efi_system_table_t ;
typedef  int /*<<< orphan*/  efi_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARM64_4K_PAGES ; 
 int /*<<< orphan*/  CONFIG_ARM64_64K_PAGES ; 
 int /*<<< orphan*/  EFI_SUCCESS ; 
 int /*<<< orphan*/  EFI_UNSUPPORTED ; 
 int /*<<< orphan*/  ID_AA64MMFR0_EL1 ; 
 int ID_AA64MMFR0_TGRAN_SHIFT ; 
 int ID_AA64MMFR0_TGRAN_SUPPORTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

efi_status_t FUNC3(efi_system_table_t *sys_table_arg)
{
	u64 tg;

	/* UEFI mandates support for 4 KB granularity, no need to check */
	if (FUNC0(CONFIG_ARM64_4K_PAGES))
		return EFI_SUCCESS;

	tg = (FUNC2(ID_AA64MMFR0_EL1) >> ID_AA64MMFR0_TGRAN_SHIFT) & 0xf;
	if (tg != ID_AA64MMFR0_TGRAN_SUPPORTED) {
		if (FUNC0(CONFIG_ARM64_64K_PAGES))
			FUNC1(sys_table_arg, "This 64 KB granular kernel is not supported by your CPU\n");
		else
			FUNC1(sys_table_arg, "This 16 KB granular kernel is not supported by your CPU\n");
		return EFI_UNSUPPORTED;
	}
	return EFI_SUCCESS;
}