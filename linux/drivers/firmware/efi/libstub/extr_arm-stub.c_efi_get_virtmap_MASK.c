#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_11__ {int attribute; int phys_addr; int num_pages; int virt_addr; } ;
typedef  TYPE_1__ efi_memory_desc_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARM64 ; 
 int EFI_MEMORY_RUNTIME ; 
 int EFI_PAGE_SIZE ; 
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int SZ_2M ; 
 int SZ_64K ; 
 int /*<<< orphan*/  cmp_mem_desc ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,unsigned long) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int virtmap_base ; 

void FUNC9(efi_memory_desc_t *memory_map, unsigned long map_size,
		     unsigned long desc_size, efi_memory_desc_t *runtime_map,
		     int *count)
{
	u64 efi_virt_base = virtmap_base;
	efi_memory_desc_t *in, *prev = NULL, *out = runtime_map;
	int l;

	/*
	 * To work around potential issues with the Properties Table feature
	 * introduced in UEFI 2.5, which may split PE/COFF executable images
	 * in memory into several RuntimeServicesCode and RuntimeServicesData
	 * regions, we need to preserve the relative offsets between adjacent
	 * EFI_MEMORY_RUNTIME regions with the same memory type attributes.
	 * The easiest way to find adjacent regions is to sort the memory map
	 * before traversing it.
	 */
	if (FUNC1(CONFIG_ARM64))
		FUNC8(memory_map, map_size / desc_size, desc_size, cmp_mem_desc,
		     NULL);

	for (l = 0; l < map_size; l += desc_size, prev = in) {
		u64 paddr, size;

		in = (void *)memory_map + l;
		if (!(in->attribute & EFI_MEMORY_RUNTIME))
			continue;

		paddr = in->phys_addr;
		size = in->num_pages * EFI_PAGE_SIZE;

		if (FUNC3()) {
			in->virt_addr = in->phys_addr;
			continue;
		}

		/*
		 * Make the mapping compatible with 64k pages: this allows
		 * a 4k page size kernel to kexec a 64k page size kernel and
		 * vice versa.
		 */
		if ((FUNC1(CONFIG_ARM64) &&
		     !FUNC4(prev, in)) ||
		    !FUNC5(prev, in)) {

			paddr = FUNC6(in->phys_addr, SZ_64K);
			size += in->phys_addr - paddr;

			/*
			 * Avoid wasting memory on PTEs by choosing a virtual
			 * base that is compatible with section mappings if this
			 * region has the appropriate size and physical
			 * alignment. (Sections are 2 MB on 4k granule kernels)
			 */
			if (FUNC0(in->phys_addr, SZ_2M) && size >= SZ_2M)
				efi_virt_base = FUNC7(efi_virt_base, SZ_2M);
			else
				efi_virt_base = FUNC7(efi_virt_base, SZ_64K);
		}

		in->virt_addr = efi_virt_base + in->phys_addr - paddr;
		efi_virt_base += size;

		FUNC2(out, in, desc_size);
		out = (void *)out + desc_size;
		++*count;
	}
}