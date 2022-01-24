#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct TYPE_4__ {int reg_val_offs; } ;
struct TYPE_3__ {scalar_t__ gpu_addr; } ;
struct amdgpu_device {TYPE_2__ virt; TYPE_1__ wb; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_COPY_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_ring*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_ring *ring, uint32_t reg)
{
	struct amdgpu_device *adev = ring->adev;

	FUNC1(ring, FUNC0(PACKET3_COPY_DATA, 4));
	FUNC1(ring, 0 |	/* src: register*/
				(5 << 8) |	/* dst: memory */
				(1 << 20));	/* write confirm */
	FUNC1(ring, reg);
	FUNC1(ring, 0);
	FUNC1(ring, FUNC2(adev->wb.gpu_addr +
				adev->virt.reg_val_offs * 4));
	FUNC1(ring, FUNC3(adev->wb.gpu_addr +
				adev->virt.reg_val_offs * 4));
}