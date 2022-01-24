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
struct page {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  pinned_vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page**,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 

void FUNC2(struct page **p, size_t num_pages)
{
	FUNC0(p, num_pages, 1);

	/* during close after signal, mm can be NULL */
	if (current->mm)
		FUNC1(num_pages, &current->mm->pinned_vm);
}