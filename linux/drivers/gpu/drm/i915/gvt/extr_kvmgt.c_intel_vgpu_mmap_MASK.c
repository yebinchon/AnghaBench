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
typedef  scalar_t__ u64 ;
struct vm_area_struct {unsigned int vm_pgoff; scalar_t__ vm_end; scalar_t__ vm_start; int vm_flags; int /*<<< orphan*/  vm_page_prot; } ;
struct mdev_device {int dummy; } ;
struct intel_vgpu {int /*<<< orphan*/  gvt; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long PAGE_SHIFT ; 
 unsigned int VFIO_PCI_BAR2_REGION_INDEX ; 
 unsigned int VFIO_PCI_OFFSET_SHIFT ; 
 unsigned int VFIO_PCI_ROM_REGION_INDEX ; 
 int VM_SHARED ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu*,unsigned long) ; 
 struct intel_vgpu* FUNC2 (struct mdev_device*) ; 
 int FUNC3 (struct vm_area_struct*,scalar_t__,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (struct intel_vgpu*) ; 
 unsigned long FUNC5 (struct intel_vgpu*) ; 

__attribute__((used)) static int FUNC6(struct mdev_device *mdev, struct vm_area_struct *vma)
{
	unsigned int index;
	u64 virtaddr;
	unsigned long req_size, pgoff, req_start;
	pgprot_t pg_prot;
	struct intel_vgpu *vgpu = FUNC2(mdev);

	index = vma->vm_pgoff >> (VFIO_PCI_OFFSET_SHIFT - PAGE_SHIFT);
	if (index >= VFIO_PCI_ROM_REGION_INDEX)
		return -EINVAL;

	if (vma->vm_end < vma->vm_start)
		return -EINVAL;
	if ((vma->vm_flags & VM_SHARED) == 0)
		return -EINVAL;
	if (index != VFIO_PCI_BAR2_REGION_INDEX)
		return -EINVAL;

	pg_prot = vma->vm_page_prot;
	virtaddr = vma->vm_start;
	req_size = vma->vm_end - vma->vm_start;
	pgoff = vma->vm_pgoff &
		((1U << (VFIO_PCI_OFFSET_SHIFT - PAGE_SHIFT)) - 1);
	req_start = pgoff << PAGE_SHIFT;

	if (!FUNC1(vgpu, req_start))
		return -EINVAL;
	if (req_start + req_size >
	    FUNC4(vgpu) + FUNC5(vgpu))
		return -EINVAL;

	pgoff = (FUNC0(vgpu->gvt) >> PAGE_SHIFT) + pgoff;

	return FUNC3(vma, virtaddr, pgoff, req_size, pg_prot);
}