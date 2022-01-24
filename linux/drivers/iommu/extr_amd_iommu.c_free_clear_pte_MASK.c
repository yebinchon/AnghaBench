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
struct page {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (unsigned long,int,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static struct page *FUNC6(u64 *pte, u64 pteval, struct page *freelist)
{
	unsigned long pt;
	int mode;

	while (FUNC3(pte, pteval, 0) != pteval) {
		FUNC5("AMD-Vi: IOMMU pte changed since we read it\n");
		pteval = *pte;
	}

	if (!FUNC2(pteval))
		return freelist;

	pt   = (unsigned long)FUNC1(pteval);
	mode = FUNC0(pteval);

	return FUNC4(pt, mode, freelist);
}