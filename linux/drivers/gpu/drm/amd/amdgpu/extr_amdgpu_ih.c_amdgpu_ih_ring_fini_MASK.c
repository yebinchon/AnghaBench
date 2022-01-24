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
struct amdgpu_ih_ring {int gpu_addr; int wptr_addr; int rptr_addr; int /*<<< orphan*/ * ring; int /*<<< orphan*/  ring_obj; scalar_t__ ring_size; scalar_t__ use_bus_addr; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,void**) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,void*,int) ; 

void FUNC3(struct amdgpu_device *adev, struct amdgpu_ih_ring *ih)
{
	if (ih->use_bus_addr) {
		if (!ih->ring)
			return;

		/* add 8 bytes for the rptr/wptr shadows and
		 * add them to the end of the ring allocation.
		 */
		FUNC2(adev->dev, ih->ring_size + 8,
				  (void *)ih->ring, ih->gpu_addr);
		ih->ring = NULL;
	} else {
		FUNC0(&ih->ring_obj, &ih->gpu_addr,
				      (void **)&ih->ring);
		FUNC1(adev, (ih->wptr_addr - ih->gpu_addr) / 4);
		FUNC1(adev, (ih->rptr_addr - ih->gpu_addr) / 4);
	}
}