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

/* Variables and functions */
 int GFP_ATOMIC ; 
 int __GFP_ZERO ; 
 struct page* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct page*) ; 

void *FUNC2(int node)
{
	struct page *page;
	void *vaddr = NULL;

	page = FUNC0(node, GFP_ATOMIC | __GFP_ZERO, 0);
	if (page)
		vaddr = FUNC1(page);
	return vaddr;
}