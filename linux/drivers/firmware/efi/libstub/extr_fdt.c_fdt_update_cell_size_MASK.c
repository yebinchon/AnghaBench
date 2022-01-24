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
 int /*<<< orphan*/  EFI_DT_ADDR_CELLS_DEFAULT ; 
 int /*<<< orphan*/  EFI_DT_SIZE_CELLS_DEFAULT ; 
 int FUNC0 (void*,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(efi_system_table_t *sys_table, void *fdt)
{
	int offset;

	offset = FUNC0(fdt, "/");
	/* Set the #address-cells and #size-cells values for an empty tree */

	FUNC1(fdt, offset, "#address-cells", EFI_DT_ADDR_CELLS_DEFAULT);
	FUNC1(fdt, offset, "#size-cells",    EFI_DT_SIZE_CELLS_DEFAULT);
}