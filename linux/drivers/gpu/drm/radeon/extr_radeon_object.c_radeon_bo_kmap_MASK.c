#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  num_pages; } ;
struct radeon_bo {void* kptr; int /*<<< orphan*/  kmap; TYPE_1__ tbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_bo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int*) ; 

int FUNC3(struct radeon_bo *bo, void **ptr)
{
	bool is_iomem;
	int r;

	if (bo->kptr) {
		if (ptr) {
			*ptr = bo->kptr;
		}
		return 0;
	}
	r = FUNC1(&bo->tbo, 0, bo->tbo.num_pages, &bo->kmap);
	if (r) {
		return r;
	}
	bo->kptr = FUNC2(&bo->kmap, &is_iomem);
	if (ptr) {
		*ptr = bo->kptr;
	}
	FUNC0(bo, 0, 0);
	return 0;
}