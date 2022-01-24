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
typedef  int /*<<< orphan*/  u64 ;
struct a6xx_gmu_bo {int size; struct a6xx_gmu_bo* pages; int /*<<< orphan*/  iova; } ;
struct a6xx_gmu {int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct a6xx_gmu_bo*) ; 
 int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct a6xx_gmu_bo,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct a6xx_gmu_bo*) ; 

__attribute__((used)) static void FUNC4(struct a6xx_gmu *gmu, struct a6xx_gmu_bo *bo)
{
	int count, i;
	u64 iova;

	if (FUNC0(bo))
		return;

	count = bo->size >> PAGE_SHIFT;
	iova = bo->iova;

	for (i = 0; i < count; i++, iova += PAGE_SIZE) {
		FUNC2(gmu->domain, iova, PAGE_SIZE);
		FUNC1(bo->pages[i], 0);
	}

	FUNC3(bo->pages);
	FUNC3(bo);
}