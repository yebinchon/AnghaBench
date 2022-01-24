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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct amdgpu_device {int /*<<< orphan*/  pcie_idx_lock; TYPE_1__* nbio_funcs; } ;
struct TYPE_2__ {unsigned long (* get_pcie_index_offset ) (struct amdgpu_device*) ;unsigned long (* get_pcie_data_offset ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int smnDF_PIE_AON_FabricIndirectConfigAccessAddress3 ; 
 int smnDF_PIE_AON_FabricIndirectConfigAccessDataHi3 ; 
 int smnDF_PIE_AON_FabricIndirectConfigAccessDataLo3 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC4 (struct amdgpu_device*) ; 
 unsigned long FUNC5 (struct amdgpu_device*) ; 

__attribute__((used)) static uint64_t FUNC6(struct amdgpu_device *adev,
				 uint32_t ficaa_val)
{
	unsigned long flags, address, data;
	uint32_t ficadl_val, ficadh_val;

	address = adev->nbio_funcs->get_pcie_index_offset(adev);
	data = adev->nbio_funcs->get_pcie_data_offset(adev);

	FUNC2(&adev->pcie_idx_lock, flags);
	FUNC1(address, smnDF_PIE_AON_FabricIndirectConfigAccessAddress3);
	FUNC1(data, ficaa_val);

	FUNC1(address, smnDF_PIE_AON_FabricIndirectConfigAccessDataLo3);
	ficadl_val = FUNC0(data);

	FUNC1(address, smnDF_PIE_AON_FabricIndirectConfigAccessDataHi3);
	ficadh_val = FUNC0(data);

	FUNC3(&adev->pcie_idx_lock, flags);

	return (((ficadh_val & 0xFFFFFFFFFFFFFFFF) << 32) | ficadl_val);
}