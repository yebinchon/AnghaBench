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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  fdt_val64 ;
typedef  int /*<<< orphan*/  efi_system_table_t ;
typedef  scalar_t__ efi_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_RANDOMIZE_BASE ; 
 scalar_t__ EFI_BUFFER_TOO_SMALL ; 
 scalar_t__ EFI_LOAD_ERROR ; 
 scalar_t__ EFI_NOT_FOUND ; 
 scalar_t__ EFI_SUCCESS ; 
 int FDT_ERR_NOSPACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ U32_MAX ; 
 scalar_t__ U64_MAX ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (void*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (void*) ; 
 int FUNC5 (void*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int) ; 
 int FUNC7 (void*) ; 
 int FUNC8 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int FUNC10 (void*,int,char*,char*,scalar_t__) ; 
 int FUNC11 (void*,int,char*,scalar_t__) ; 
 int FUNC12 (void*,int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC16 (char*) ; 

__attribute__((used)) static efi_status_t FUNC17(efi_system_table_t *sys_table, void *orig_fdt,
			       unsigned long orig_fdt_size,
			       void *fdt, int new_fdt_size, char *cmdline_ptr,
			       u64 initrd_addr, u64 initrd_size)
{
	int node, num_rsv;
	int status;
	u32 fdt_val32;
	u64 fdt_val64;

	/* Do some checks on provided FDT, if it exists: */
	if (orig_fdt) {
		if (FUNC4(orig_fdt)) {
			FUNC15(sys_table, "Device Tree header not valid!\n");
			return EFI_LOAD_ERROR;
		}
		/*
		 * We don't get the size of the FDT if we get if from a
		 * configuration table:
		 */
		if (orig_fdt_size && FUNC13(orig_fdt) > orig_fdt_size) {
			FUNC15(sys_table, "Truncated device tree! foo!\n");
			return EFI_LOAD_ERROR;
		}
	}

	if (orig_fdt) {
		status = FUNC8(orig_fdt, fdt, new_fdt_size);
	} else {
		status = FUNC5(fdt, new_fdt_size);
		if (status == 0) {
			/*
			 * Any failure from the following function is
			 * non-critical:
			 */
			FUNC14(sys_table, fdt);
		}
	}

	if (status != 0)
		goto fdt_set_fail;

	/*
	 * Delete all memory reserve map entries. When booting via UEFI,
	 * kernel will use the UEFI memory map to find reserved regions.
	 */
	num_rsv = FUNC7(fdt);
	while (num_rsv-- > 0)
		FUNC6(fdt, num_rsv);

	node = FUNC12(fdt, 0, "chosen");
	if (node < 0) {
		node = FUNC3(fdt, 0, "chosen");
		if (node < 0) {
			/* 'node' is an error code when negative: */
			status = node;
			goto fdt_set_fail;
		}
	}

	if (cmdline_ptr != NULL && FUNC16(cmdline_ptr) > 0) {
		status = FUNC10(fdt, node, "bootargs", cmdline_ptr,
				     FUNC16(cmdline_ptr) + 1);
		if (status)
			goto fdt_set_fail;
	}

	/* Set initrd address/end in device tree, if present */
	if (initrd_size != 0) {
		u64 initrd_image_end;
		u64 initrd_image_start = FUNC1(initrd_addr);

		status = FUNC11(fdt, node, "linux,initrd-start", initrd_image_start);
		if (status)
			goto fdt_set_fail;

		initrd_image_end = FUNC1(initrd_addr + initrd_size);
		status = FUNC11(fdt, node, "linux,initrd-end", initrd_image_end);
		if (status)
			goto fdt_set_fail;
	}

	/* Add FDT entries for EFI runtime services in chosen node. */
	node = FUNC12(fdt, 0, "chosen");
	fdt_val64 = FUNC1((u64)(unsigned long)sys_table);

	status = FUNC11(fdt, node, "linux,uefi-system-table", fdt_val64);
	if (status)
		goto fdt_set_fail;

	fdt_val64 = U64_MAX; /* placeholder */

	status = FUNC11(fdt, node, "linux,uefi-mmap-start", fdt_val64);
	if (status)
		goto fdt_set_fail;

	fdt_val32 = U32_MAX; /* placeholder */

	status = FUNC11(fdt, node, "linux,uefi-mmap-size", fdt_val32);
	if (status)
		goto fdt_set_fail;

	status = FUNC11(fdt, node, "linux,uefi-mmap-desc-size", fdt_val32);
	if (status)
		goto fdt_set_fail;

	status = FUNC11(fdt, node, "linux,uefi-mmap-desc-ver", fdt_val32);
	if (status)
		goto fdt_set_fail;

	if (FUNC0(CONFIG_RANDOMIZE_BASE)) {
		efi_status_t efi_status;

		efi_status = FUNC2(sys_table, sizeof(fdt_val64),
						  (u8 *)&fdt_val64);
		if (efi_status == EFI_SUCCESS) {
			status = FUNC11(fdt, node, "kaslr-seed", fdt_val64);
			if (status)
				goto fdt_set_fail;
		} else if (efi_status != EFI_NOT_FOUND) {
			return efi_status;
		}
	}

	/* Shrink the FDT back to its minimum size: */
	FUNC9(fdt);

	return EFI_SUCCESS;

fdt_set_fail:
	if (status == -FDT_ERR_NOSPACE)
		return EFI_BUFFER_TOO_SMALL;

	return EFI_LOAD_ERROR;
}