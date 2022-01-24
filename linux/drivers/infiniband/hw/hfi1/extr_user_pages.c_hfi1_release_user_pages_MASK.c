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
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct page**,size_t,int) ; 

void FUNC2(struct mm_struct *mm, struct page **p,
			     size_t npages, bool dirty)
{
	FUNC1(p, npages, dirty);

	if (mm) { /* during close after signal, mm can be NULL */
		FUNC0(npages, &mm->pinned_vm);
	}
}