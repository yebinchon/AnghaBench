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
struct TYPE_2__ {int num_mmio_block; struct gvt_mmio_block* mmio_block; } ;
struct intel_gvt {TYPE_1__ mmio; } ;
struct gvt_mmio_block {unsigned long device; unsigned int size; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct intel_gvt*) ; 

__attribute__((used)) static struct gvt_mmio_block *FUNC2(struct intel_gvt *gvt,
					      unsigned int offset)
{
	unsigned long device = FUNC1(gvt);
	struct gvt_mmio_block *block = gvt->mmio.mmio_block;
	int num = gvt->mmio.num_mmio_block;
	int i;

	for (i = 0; i < num; i++, block++) {
		if (!(device & block->device))
			continue;
		if (offset >= FUNC0(block->offset) &&
		    offset < FUNC0(block->offset) + block->size)
			return block;
	}
	return NULL;
}