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
struct vm_area_struct {int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  vm_flags; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  VM_MIXEDMAP ; 
 int /*<<< orphan*/  VM_PFNMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct vm_area_struct *vma)
{
	pgprot_t prot = FUNC1(vma->vm_flags);

	vma->vm_flags |= VM_MIXEDMAP;
	vma->vm_flags &= ~VM_PFNMAP;
	vma->vm_page_prot = FUNC0(prot);
}