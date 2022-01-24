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
struct resource {scalar_t__ start; scalar_t__ end; struct resource* sibling; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct resource*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct resource* hyperv_mmio ; 
 int /*<<< orphan*/  hyperv_mmio_lock ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(resource_size_t start, resource_size_t size)
{
	struct resource *iter;

	FUNC1(&hyperv_mmio_lock);
	for (iter = hyperv_mmio; iter; iter = iter->sibling) {
		if ((iter->start >= start + size) || (iter->end <= start))
			continue;

		FUNC0(iter, start, size);
	}
	FUNC2(start, size);
	FUNC3(&hyperv_mmio_lock);

}