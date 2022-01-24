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
struct siw_mem {int /*<<< orphan*/  ref; } ;
struct siw_device {int /*<<< orphan*/  mem_xa; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct siw_mem* FUNC4 (int /*<<< orphan*/ *,int) ; 

struct siw_mem *FUNC5(struct siw_device *sdev, int stag_index)
{
	struct siw_mem *mem;

	FUNC2();
	mem = FUNC4(&sdev->mem_xa, stag_index);
	if (FUNC1(mem && FUNC0(&mem->ref))) {
		FUNC3();
		return mem;
	}
	FUNC3();

	return NULL;
}