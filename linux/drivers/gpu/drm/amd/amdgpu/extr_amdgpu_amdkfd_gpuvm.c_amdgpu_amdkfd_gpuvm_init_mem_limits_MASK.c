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
typedef  int uint64_t ;
struct sysinfo {int totalram; int totalhigh; int mem_unit; } ;
struct TYPE_2__ {int max_system_mem_limit; int max_ttm_mem_limit; int /*<<< orphan*/  mem_limit_lock; } ;

/* Variables and functions */
 TYPE_1__ kfd_mem_limit ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sysinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	struct sysinfo si;
	uint64_t mem;

	FUNC1(&si);
	mem = si.totalram - si.totalhigh;
	mem *= si.mem_unit;

	FUNC2(&kfd_mem_limit.mem_limit_lock);
	kfd_mem_limit.max_system_mem_limit = (mem >> 1) + (mem >> 2);
	kfd_mem_limit.max_ttm_mem_limit = (mem >> 1) - (mem >> 3);
	FUNC0("Kernel memory limit %lluM, TTM limit %lluM\n",
		(kfd_mem_limit.max_system_mem_limit >> 20),
		(kfd_mem_limit.max_ttm_mem_limit >> 20));
}