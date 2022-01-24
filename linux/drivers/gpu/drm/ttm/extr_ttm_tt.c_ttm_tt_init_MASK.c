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
typedef  int /*<<< orphan*/  uint32_t ;
struct ttm_tt {int dummy; } ;
struct ttm_buffer_object {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct ttm_tt*) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_tt*) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_tt*,struct ttm_buffer_object*,int /*<<< orphan*/ ) ; 

int FUNC4(struct ttm_tt *ttm, struct ttm_buffer_object *bo,
		uint32_t page_flags)
{
	FUNC3(ttm, bo, page_flags);

	if (FUNC1(ttm)) {
		FUNC2(ttm);
		FUNC0("Failed allocating page table\n");
		return -ENOMEM;
	}
	return 0;
}