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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {size_t address; } ;
struct vm_area_struct {size_t vm_start; } ;
struct omap_gem_object {size_t dma_addr; int /*<<< orphan*/ * pages; } ;
struct drm_gem_object {int dummy; } ;
typedef  size_t pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  PFN_DEV ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_gem_object*) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 struct omap_gem_object* FUNC6 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_fault_t FUNC8(struct drm_gem_object *obj,
		struct vm_area_struct *vma, struct vm_fault *vmf)
{
	struct omap_gem_object *omap_obj = FUNC6(obj);
	unsigned long pfn;
	pgoff_t pgoff;

	/* We don't use vmf->pgoff since that has the fake offset: */
	pgoff = (vmf->address - vma->vm_start) >> PAGE_SHIFT;

	if (omap_obj->pages) {
		FUNC3(obj, pgoff);
		pfn = FUNC5(omap_obj->pages[pgoff]);
	} else {
		FUNC0(!FUNC4(omap_obj));
		pfn = (omap_obj->dma_addr >> PAGE_SHIFT) + pgoff;
	}

	FUNC1("Inserting %p pfn %lx, pa %lx", (void *)vmf->address,
			pfn, pfn << PAGE_SHIFT);

	return FUNC7(vma, vmf->address,
			FUNC2(pfn, PFN_DEV));
}