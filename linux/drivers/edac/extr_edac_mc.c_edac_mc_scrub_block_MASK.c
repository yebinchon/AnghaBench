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
typedef  int /*<<< orphan*/  u32 ;
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 void* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 struct page* FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 

__attribute__((used)) static void FUNC9(unsigned long page, unsigned long offset,
				u32 size)
{
	struct page *pg;
	void *virt_addr;
	unsigned long flags = 0;

	FUNC2(3, "\n");

	/* ECC error page was not in our memory. Ignore it. */
	if (!FUNC8(page))
		return;

	/* Find the actual page structure then map it and fix */
	pg = FUNC7(page);

	if (FUNC0(pg))
		FUNC6(flags);

	virt_addr = FUNC3(pg);

	/* Perform architecture specific atomic scrub operation */
	FUNC1(virt_addr + offset, size);

	/* Unmap and complete */
	FUNC4(virt_addr);

	if (FUNC0(pg))
		FUNC5(flags);
}