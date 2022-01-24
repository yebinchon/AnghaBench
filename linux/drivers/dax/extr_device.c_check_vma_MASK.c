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
struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; } ;
struct device {int dummy; } ;
struct dev_dax {int /*<<< orphan*/  dax_dev; struct device dev; struct dax_region* region; } ;
struct dax_region {int align; int pfn_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int PFN_DEV ; 
 int PFN_MAP ; 
 int VM_DONTCOPY ; 
 int VM_MAYSHARE ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC3(struct dev_dax *dev_dax, struct vm_area_struct *vma,
		const char *func)
{
	struct dax_region *dax_region = dev_dax->region;
	struct device *dev = &dev_dax->dev;
	unsigned long mask;

	if (!FUNC0(dev_dax->dax_dev))
		return -ENXIO;

	/* prevent private mappings from being established */
	if ((vma->vm_flags & VM_MAYSHARE) != VM_MAYSHARE) {
		FUNC1(dev,
				"%s: %s: fail, attempted private mapping\n",
				current->comm, func);
		return -EINVAL;
	}

	mask = dax_region->align - 1;
	if (vma->vm_start & mask || vma->vm_end & mask) {
		FUNC1(dev,
				"%s: %s: fail, unaligned vma (%#lx - %#lx, %#lx)\n",
				current->comm, func, vma->vm_start, vma->vm_end,
				mask);
		return -EINVAL;
	}

	if ((dax_region->pfn_flags & (PFN_DEV|PFN_MAP)) == PFN_DEV
			&& (vma->vm_flags & VM_DONTCOPY) == 0) {
		FUNC1(dev,
				"%s: %s: fail, dax range requires MADV_DONTFORK\n",
				current->comm, func);
		return -EINVAL;
	}

	if (!FUNC2(vma)) {
		FUNC1(dev,
				"%s: %s: fail, vma is not DAX capable\n",
				current->comm, func);
		return -EINVAL;
	}

	return 0;
}