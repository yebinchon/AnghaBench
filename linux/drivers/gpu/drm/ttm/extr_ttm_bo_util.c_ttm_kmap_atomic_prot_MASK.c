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
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_KERNEL ; 
 void* FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void *FUNC3(struct page *page, pgprot_t prot)
{
	if (FUNC2(prot) == FUNC2(PAGE_KERNEL))
		return FUNC1(page);
	else
		return FUNC0(page, prot);
}