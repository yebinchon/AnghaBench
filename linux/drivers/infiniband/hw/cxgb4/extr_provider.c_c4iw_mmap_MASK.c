#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct vm_area_struct {int vm_end; int vm_start; int vm_pgoff; void* vm_page_prot; } ;
struct ib_ucontext {int /*<<< orphan*/  device; } ;
struct c4iw_ucontext {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  adapter_type; int /*<<< orphan*/  pdev; } ;
struct c4iw_rdev {int oc_mw_pa; TYPE_1__ lldi; } ;
struct c4iw_mm_entry {int addr; } ;
struct TYPE_4__ {struct c4iw_rdev rdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC0 (struct vm_area_struct*,int,int,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct c4iw_mm_entry*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int) ; 
 int FUNC7 (struct vm_area_struct*,int,int,int,void*) ; 
 struct c4iw_mm_entry* FUNC8 (struct c4iw_ucontext*,int,int) ; 
 void* FUNC9 (void*) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ) ; 
 struct c4iw_ucontext* FUNC11 (struct ib_ucontext*) ; 

__attribute__((used)) static int FUNC12(struct ib_ucontext *context, struct vm_area_struct *vma)
{
	int len = vma->vm_end - vma->vm_start;
	u32 key = vma->vm_pgoff << PAGE_SHIFT;
	struct c4iw_rdev *rdev;
	int ret = 0;
	struct c4iw_mm_entry *mm;
	struct c4iw_ucontext *ucontext;
	u64 addr;

	FUNC6("pgoff 0x%lx key 0x%x len %d\n", vma->vm_pgoff,
		 key, len);

	if (vma->vm_start & (PAGE_SIZE-1))
		return -EINVAL;

	rdev = &(FUNC10(context->device)->rdev);
	ucontext = FUNC11(context);

	mm = FUNC8(ucontext, key, len);
	if (!mm)
		return -EINVAL;
	addr = mm->addr;
	FUNC2(mm);

	if ((addr >= FUNC4(rdev->lldi.pdev, 0)) &&
	    (addr < (FUNC4(rdev->lldi.pdev, 0) +
		    FUNC3(rdev->lldi.pdev, 0)))) {

		/*
		 * MA_SYNC register...
		 */
		vma->vm_page_prot = FUNC5(vma->vm_page_prot);
		ret = FUNC0(vma, vma->vm_start,
					 addr >> PAGE_SHIFT,
					 len, vma->vm_page_prot);
	} else if ((addr >= FUNC4(rdev->lldi.pdev, 2)) &&
		   (addr < (FUNC4(rdev->lldi.pdev, 2) +
		    FUNC3(rdev->lldi.pdev, 2)))) {

		/*
		 * Map user DB or OCQP memory...
		 */
		if (addr >= rdev->oc_mw_pa)
			vma->vm_page_prot = FUNC9(vma->vm_page_prot);
		else {
			if (!FUNC1(rdev->lldi.adapter_type))
				vma->vm_page_prot =
					FUNC9(vma->vm_page_prot);
			else
				vma->vm_page_prot =
					FUNC5(vma->vm_page_prot);
		}
		ret = FUNC0(vma, vma->vm_start,
					 addr >> PAGE_SHIFT,
					 len, vma->vm_page_prot);
	} else {

		/*
		 * Map WQ or CQ contig dma memory...
		 */
		ret = FUNC7(vma, vma->vm_start,
				      addr >> PAGE_SHIFT,
				      len, vma->vm_page_prot);
	}

	return ret;
}