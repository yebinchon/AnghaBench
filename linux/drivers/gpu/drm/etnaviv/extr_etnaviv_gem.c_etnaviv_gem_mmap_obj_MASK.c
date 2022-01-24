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
struct vm_area_struct {int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  vm_file; scalar_t__ vm_pgoff; int /*<<< orphan*/  vm_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  filp; } ;
struct etnaviv_gem_object {int flags; TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int ETNA_BO_UNCACHED ; 
 int ETNA_BO_WC ; 
 int /*<<< orphan*/  VM_MIXEDMAP ; 
 int /*<<< orphan*/  VM_PFNMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct etnaviv_gem_object *etnaviv_obj,
		struct vm_area_struct *vma)
{
	pgprot_t vm_page_prot;

	vma->vm_flags &= ~VM_PFNMAP;
	vma->vm_flags |= VM_MIXEDMAP;

	vm_page_prot = FUNC4(vma->vm_flags);

	if (etnaviv_obj->flags & ETNA_BO_WC) {
		vma->vm_page_prot = FUNC3(vm_page_prot);
	} else if (etnaviv_obj->flags & ETNA_BO_UNCACHED) {
		vma->vm_page_prot = FUNC2(vm_page_prot);
	} else {
		/*
		 * Shunt off cached objs to shmem file so they have their own
		 * address_space (so unmap_mapping_range does what we want,
		 * in particular in the case of mmap'd dmabufs)
		 */
		FUNC0(vma->vm_file);
		FUNC1(etnaviv_obj->base.filp);
		vma->vm_pgoff = 0;
		vma->vm_file  = etnaviv_obj->base.filp;

		vma->vm_page_prot = vm_page_prot;
	}

	return 0;
}