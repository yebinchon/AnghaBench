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
struct siw_mr {struct siw_mem* mem; } ;
struct siw_mem {int stag; TYPE_1__* sdev; scalar_t__ stag_valid; } ;
struct TYPE_2__ {int /*<<< orphan*/  mem_xa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct siw_mem*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct siw_mem* FUNC3 (int /*<<< orphan*/ *,int) ; 

void FUNC4(struct siw_mr *mr)
{
	struct siw_mem *mem = mr->mem, *found;

	mem->stag_valid = 0;

	/* make STag invalid visible asap */
	FUNC2();

	found = FUNC3(&mem->sdev->mem_xa, mem->stag >> 8);
	FUNC0(found != mem);
	FUNC1(mem);
}