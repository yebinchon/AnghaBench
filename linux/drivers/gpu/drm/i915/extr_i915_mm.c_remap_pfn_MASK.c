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
struct remap_pfn {int /*<<< orphan*/  pfn; int /*<<< orphan*/  prot; int /*<<< orphan*/  mm; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(pte_t *pte, unsigned long addr, void *data)
{
	struct remap_pfn *r = data;

	/* Special PTE are not associated with any struct page */
	FUNC2(r->mm, addr, pte, FUNC1(FUNC0(r->pfn, r->prot)));
	r->pfn++;

	return 0;
}