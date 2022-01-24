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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct amdgpu_device {int /*<<< orphan*/  pcie_idx_lock; TYPE_1__* nbio_funcs; } ;
struct TYPE_2__ {unsigned long (* get_pcie_index_offset ) (struct amdgpu_device*) ;unsigned long (* get_pcie_data_offset ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC4 (struct amdgpu_device*) ; 
 unsigned long FUNC5 (struct amdgpu_device*) ; 

__attribute__((used)) static u64 FUNC6(struct amdgpu_device *adev, u32 reg)
{
	unsigned long flags, address, data;
	u64 r;
	address = adev->nbio_funcs->get_pcie_index_offset(adev);
	data = adev->nbio_funcs->get_pcie_data_offset(adev);

	FUNC2(&adev->pcie_idx_lock, flags);
	/* read low 32 bit */
	FUNC1(address, reg);
	(void)FUNC0(address);
	r = FUNC0(data);

	/* read high 32 bit*/
	FUNC1(address, reg + 4);
	(void)FUNC0(address);
	r |= ((u64)FUNC0(data) << 32);
	FUNC3(&adev->pcie_idx_lock, flags);
	return r;
}