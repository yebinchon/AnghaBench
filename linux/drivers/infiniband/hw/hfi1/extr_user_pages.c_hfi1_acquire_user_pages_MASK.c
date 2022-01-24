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
struct page {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  pinned_vm; } ;

/* Variables and functions */
 unsigned int FOLL_LONGTERM ; 
 unsigned int FOLL_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned long,size_t,unsigned int,struct page**) ; 

int FUNC2(struct mm_struct *mm, unsigned long vaddr, size_t npages,
			    bool writable, struct page **pages)
{
	int ret;
	unsigned int gup_flags = FOLL_LONGTERM | (writable ? FOLL_WRITE : 0);

	ret = FUNC1(vaddr, npages, gup_flags, pages);
	if (ret < 0)
		return ret;

	FUNC0(ret, &mm->pinned_vm);

	return ret;
}