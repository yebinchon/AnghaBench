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
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t shared_memory_amount ; 
 int /*<<< orphan*/  shared_memory_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(size_t alloc_size)
{
	FUNC1(&shared_memory_lock);

	if (!FUNC0(alloc_size)) {
		FUNC2(&shared_memory_lock);
		return false;
	}

	shared_memory_amount += alloc_size;

	FUNC2(&shared_memory_lock);

	return true;
}