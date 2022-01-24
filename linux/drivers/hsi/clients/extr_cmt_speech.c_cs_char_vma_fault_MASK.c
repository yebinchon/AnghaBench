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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {struct page* page; TYPE_1__* vma; } ;
struct page {int dummy; } ;
struct cs_char {int /*<<< orphan*/  mmap_base; } ;
struct TYPE_2__ {struct cs_char* vm_private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_fault_t FUNC2(struct vm_fault *vmf)
{
	struct cs_char *csdata = vmf->vma->vm_private_data;
	struct page *page;

	page = FUNC1(csdata->mmap_base);
	FUNC0(page);
	vmf->page = page;

	return 0;
}