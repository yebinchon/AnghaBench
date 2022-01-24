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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 size_t shared_memory_amount ; 
 int /*<<< orphan*/  shared_memory_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(size_t alloc_size)
{
	unsigned long flags;

	FUNC2(&shared_memory_lock, flags);

	if (FUNC1(shared_memory_amount < alloc_size)) {
		FUNC3(&shared_memory_lock, flags);
		FUNC0("Memory usage accounting bug.");
		return;
	}

	shared_memory_amount -= alloc_size;

	FUNC3(&shared_memory_lock, flags);
}