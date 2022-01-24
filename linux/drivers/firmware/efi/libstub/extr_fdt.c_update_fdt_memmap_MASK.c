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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct efi_boot_memmap {int /*<<< orphan*/ * desc_ver; int /*<<< orphan*/ * desc_size; int /*<<< orphan*/ * map_size; scalar_t__* map; } ;
typedef  int /*<<< orphan*/  efi_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFI_LOAD_ERROR ; 
 int /*<<< orphan*/  EFI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (void*,char*) ; 
 int FUNC3 (void*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static efi_status_t FUNC4(void *fdt, struct efi_boot_memmap *map)
{
	int node = FUNC2(fdt, "/chosen");
	u64 fdt_val64;
	u32 fdt_val32;
	int err;

	if (node < 0)
		return EFI_LOAD_ERROR;

	fdt_val64 = FUNC1((unsigned long)*map->map);

	err = FUNC3(fdt, node, "linux,uefi-mmap-start", fdt_val64);
	if (err)
		return EFI_LOAD_ERROR;

	fdt_val32 = FUNC0(*map->map_size);

	err = FUNC3(fdt, node, "linux,uefi-mmap-size", fdt_val32);
	if (err)
		return EFI_LOAD_ERROR;

	fdt_val32 = FUNC0(*map->desc_size);

	err = FUNC3(fdt, node, "linux,uefi-mmap-desc-size", fdt_val32);
	if (err)
		return EFI_LOAD_ERROR;

	fdt_val32 = FUNC0(*map->desc_ver);

	err = FUNC3(fdt, node, "linux,uefi-mmap-desc-ver", fdt_val32);
	if (err)
		return EFI_LOAD_ERROR;

	return EFI_SUCCESS;
}