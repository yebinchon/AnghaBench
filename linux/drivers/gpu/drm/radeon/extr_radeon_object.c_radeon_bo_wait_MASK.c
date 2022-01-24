#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  mem_type; } ;
struct TYPE_6__ {TYPE_1__ mem; } ;
struct radeon_bo {TYPE_2__ tbo; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,int,int) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct radeon_bo *bo, u32 *mem_type, bool no_wait)
{
	int r;

	r = FUNC0(&bo->tbo, true, no_wait, NULL);
	if (FUNC3(r != 0))
		return r;
	if (mem_type)
		*mem_type = bo->tbo.mem.mem_type;

	r = FUNC2(&bo->tbo, true, no_wait);
	FUNC1(&bo->tbo);
	return r;
}