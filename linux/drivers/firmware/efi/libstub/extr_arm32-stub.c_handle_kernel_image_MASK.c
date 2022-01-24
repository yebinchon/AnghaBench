#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  efi_system_table_t ;
typedef  scalar_t__ efi_status_t ;
struct TYPE_3__ {unsigned long image_size; } ;
typedef  TYPE_1__ efi_loaded_image_t ;

/* Variables and functions */
 scalar_t__ EFI_LOAD_ERROR ; 
 scalar_t__ EFI_SUCCESS ; 
 scalar_t__ MAX_UNCOMP_KERNEL_SIZE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  SZ_128M ; 
 int TEXT_OFFSET ; 
 unsigned long ZIMAGE_OFFSET_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned long*,unsigned long,unsigned long,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned long,unsigned long*,unsigned long*) ; 
 unsigned long FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 

efi_status_t FUNC5(efi_system_table_t *sys_table,
				 unsigned long *image_addr,
				 unsigned long *image_size,
				 unsigned long *reserve_addr,
				 unsigned long *reserve_size,
				 unsigned long dram_base,
				 efi_loaded_image_t *image)
{
	unsigned long kernel_base;
	efi_status_t status;

	/*
	 * Verify that the DRAM base address is compatible with the ARM
	 * boot protocol, which determines the base of DRAM by masking
	 * off the low 27 bits of the address at which the zImage is
	 * loaded. These assumptions are made by the decompressor,
	 * before any memory map is available.
	 */
	kernel_base = FUNC4(dram_base, SZ_128M);

	/*
	 * Note that some platforms (notably, the Raspberry Pi 2) put
	 * spin-tables and other pieces of firmware at the base of RAM,
	 * abusing the fact that the window of TEXT_OFFSET bytes at the
	 * base of the kernel image is only partially used at the moment.
	 * (Up to 5 pages are used for the swapper page tables)
	 */
	kernel_base += TEXT_OFFSET - 5 * PAGE_SIZE;

	status = FUNC3(sys_table, kernel_base, reserve_addr,
				     reserve_size);
	if (status != EFI_SUCCESS) {
		FUNC2(sys_table, "Unable to allocate memory for uncompressed kernel.\n");
		return status;
	}

	/*
	 * Relocate the zImage, so that it appears in the lowest 128 MB
	 * memory window.
	 */
	*image_size = image->image_size;
	status = FUNC1(sys_table, image_addr, *image_size,
				     *image_size,
				     kernel_base + MAX_UNCOMP_KERNEL_SIZE, 0, 0);
	if (status != EFI_SUCCESS) {
		FUNC2(sys_table, "Failed to relocate kernel.\n");
		FUNC0(sys_table, *reserve_size, *reserve_addr);
		*reserve_size = 0;
		return status;
	}

	/*
	 * Check to see if we were able to allocate memory low enough
	 * in memory. The kernel determines the base of DRAM from the
	 * address at which the zImage is loaded.
	 */
	if (*image_addr + *image_size > dram_base + ZIMAGE_OFFSET_LIMIT) {
		FUNC2(sys_table, "Failed to relocate kernel, no low memory available.\n");
		FUNC0(sys_table, *reserve_size, *reserve_addr);
		*reserve_size = 0;
		FUNC0(sys_table, *image_size, *image_addr);
		*image_size = 0;
		return EFI_LOAD_ERROR;
	}
	return EFI_SUCCESS;
}