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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  void* uint32_t ;
struct sg_table {TYPE_1__* sgl; } ;
struct TYPE_2__ {void* dma_length; void* length; int /*<<< orphan*/  dma_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct sg_table*) ; 
 struct sg_table* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sg_table*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sg_table *FUNC3(uint64_t addr, uint32_t size)
{
	struct sg_table *sg = FUNC1(sizeof(*sg), GFP_KERNEL);

	if (!sg)
		return NULL;
	if (FUNC2(sg, 1, GFP_KERNEL)) {
		FUNC0(sg);
		return NULL;
	}
	sg->sgl->dma_address = addr;
	sg->sgl->length = size;
#ifdef CONFIG_NEED_SG_DMA_LENGTH
	sg->sgl->dma_length = size;
#endif
	return sg;
}