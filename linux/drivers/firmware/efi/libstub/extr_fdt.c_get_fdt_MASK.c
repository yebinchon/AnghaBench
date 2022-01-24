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
typedef  int /*<<< orphan*/  efi_system_table_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_TREE_GUID ; 
 scalar_t__ FUNC0 (void*) ; 
 unsigned long FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

void *FUNC4(efi_system_table_t *sys_table, unsigned long *fdt_size)
{
	void *fdt;

	fdt = FUNC2(sys_table, DEVICE_TREE_GUID);

	if (!fdt)
		return NULL;

	if (FUNC0(fdt) != 0) {
		FUNC3(sys_table, "Invalid header detected on UEFI supplied FDT, ignoring ...\n");
		return NULL;
	}
	*fdt_size = FUNC1(fdt);
	return fdt;
}