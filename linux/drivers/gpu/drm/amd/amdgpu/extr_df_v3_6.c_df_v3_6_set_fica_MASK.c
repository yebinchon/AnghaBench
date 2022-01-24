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
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_device {int /*<<< orphan*/  pcie_idx_lock; TYPE_1__* nbio_funcs; } ;
struct TYPE_2__ {unsigned long (* get_pcie_index_offset ) (struct amdgpu_device*) ;unsigned long (* get_pcie_data_offset ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smnDF_PIE_AON_FabricIndirectConfigAccessAddress3 ; 
 int /*<<< orphan*/  smnDF_PIE_AON_FabricIndirectConfigAccessDataHi3 ; 
 int /*<<< orphan*/  smnDF_PIE_AON_FabricIndirectConfigAccessDataLo3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC3 (struct amdgpu_device*) ; 
 unsigned long FUNC4 (struct amdgpu_device*) ; 

__attribute__((used)) static void FUNC5(struct amdgpu_device *adev, uint32_t ficaa_val,
			     uint32_t ficadl_val, uint32_t ficadh_val)
{
	unsigned long flags, address, data;

	address = adev->nbio_funcs->get_pcie_index_offset(adev);
	data = adev->nbio_funcs->get_pcie_data_offset(adev);

	FUNC1(&adev->pcie_idx_lock, flags);
	FUNC0(address, smnDF_PIE_AON_FabricIndirectConfigAccessAddress3);
	FUNC0(data, ficaa_val);

	FUNC0(address, smnDF_PIE_AON_FabricIndirectConfigAccessDataLo3);
	FUNC0(data, ficadl_val);

	FUNC0(address, smnDF_PIE_AON_FabricIndirectConfigAccessDataHi3);
	FUNC0(data, ficadh_val);

	FUNC2(&adev->pcie_idx_lock, flags);
}