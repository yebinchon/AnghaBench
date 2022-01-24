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
typedef  int u32 ;
struct amdgpu_ih_ring {unsigned int ring_size; int ptr_mask; int use_bus_addr; int /*<<< orphan*/ * rptr_cpu; void* rptr_addr; int /*<<< orphan*/ * wptr_cpu; void* wptr_addr; int /*<<< orphan*/ * ring; void* gpu_addr; int /*<<< orphan*/  ring_obj; scalar_t__ rptr; } ;
struct TYPE_2__ {int /*<<< orphan*/ * wb; void* gpu_addr; } ;
struct amdgpu_device {TYPE_1__ wb; int /*<<< orphan*/  dev; } ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_GTT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct amdgpu_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,void**) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,unsigned int) ; 
 int FUNC2 (struct amdgpu_device*,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (unsigned int) ; 

int FUNC6(struct amdgpu_device *adev, struct amdgpu_ih_ring *ih,
			unsigned ring_size, bool use_bus_addr)
{
	u32 rb_bufsz;
	int r;

	/* Align ring size */
	rb_bufsz = FUNC5(ring_size / 4);
	ring_size = (1 << rb_bufsz) * 4;
	ih->ring_size = ring_size;
	ih->ptr_mask = ih->ring_size - 1;
	ih->rptr = 0;
	ih->use_bus_addr = use_bus_addr;

	if (use_bus_addr) {
		dma_addr_t dma_addr;

		if (ih->ring)
			return 0;

		/* add 8 bytes for the rptr/wptr shadows and
		 * add them to the end of the ring allocation.
		 */
		ih->ring = FUNC3(adev->dev, ih->ring_size + 8,
					      &dma_addr, GFP_KERNEL);
		if (ih->ring == NULL)
			return -ENOMEM;

		FUNC4((void *)ih->ring, 0, ih->ring_size + 8);
		ih->gpu_addr = dma_addr;
		ih->wptr_addr = dma_addr + ih->ring_size;
		ih->wptr_cpu = &ih->ring[ih->ring_size / 4];
		ih->rptr_addr = dma_addr + ih->ring_size + 4;
		ih->rptr_cpu = &ih->ring[(ih->ring_size / 4) + 1];
	} else {
		unsigned wptr_offs, rptr_offs;

		r = FUNC2(adev, &wptr_offs);
		if (r)
			return r;

		r = FUNC2(adev, &rptr_offs);
		if (r) {
			FUNC1(adev, wptr_offs);
			return r;
		}

		r = FUNC0(adev, ih->ring_size, PAGE_SIZE,
					    AMDGPU_GEM_DOMAIN_GTT,
					    &ih->ring_obj, &ih->gpu_addr,
					    (void **)&ih->ring);
		if (r) {
			FUNC1(adev, rptr_offs);
			FUNC1(adev, wptr_offs);
			return r;
		}

		ih->wptr_addr = adev->wb.gpu_addr + wptr_offs * 4;
		ih->wptr_cpu = &adev->wb.wb[wptr_offs];
		ih->rptr_addr = adev->wb.gpu_addr + rptr_offs * 4;
		ih->rptr_cpu = &adev->wb.wb[rptr_offs];
	}
	return 0;
}