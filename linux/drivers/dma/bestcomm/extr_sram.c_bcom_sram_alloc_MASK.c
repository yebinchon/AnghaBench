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
typedef  scalar_t__ phys_addr_t ;
struct TYPE_2__ {void* base_virt; scalar_t__ base_phys; int /*<<< orphan*/  lock; int /*<<< orphan*/  rh; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 TYPE_1__* bcom_sram ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void* FUNC4(int size, int align, phys_addr_t *phys)
{
	unsigned long offset;

	FUNC2(&bcom_sram->lock);
	offset = FUNC1(bcom_sram->rh, size, align, NULL);
	FUNC3(&bcom_sram->lock);

	if (FUNC0(offset))
		return NULL;

	*phys = bcom_sram->base_phys + offset;
	return bcom_sram->base_virt + offset;
}