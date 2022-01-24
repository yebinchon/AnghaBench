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
struct radeon_bo {int /*<<< orphan*/  kmap; int /*<<< orphan*/ * kptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_bo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct radeon_bo *bo)
{
	if (bo->kptr == NULL)
		return;
	bo->kptr = NULL;
	FUNC0(bo, 0, 0);
	FUNC1(&bo->kmap);
}