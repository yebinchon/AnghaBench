
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct amdgpu_device {int pcie_idx_lock; TYPE_1__* nbio_funcs; } ;
struct TYPE_2__ {unsigned long (* get_pcie_index_offset ) (struct amdgpu_device*) ;unsigned long (* get_pcie_data_offset ) (struct amdgpu_device*) ;} ;


 int RREG32 (unsigned long) ;
 int WREG32 (unsigned long,int) ;
 int smnDF_PIE_AON_FabricIndirectConfigAccessAddress3 ;
 int smnDF_PIE_AON_FabricIndirectConfigAccessDataHi3 ;
 int smnDF_PIE_AON_FabricIndirectConfigAccessDataLo3 ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long stub1 (struct amdgpu_device*) ;
 unsigned long stub2 (struct amdgpu_device*) ;

__attribute__((used)) static uint64_t df_v3_6_get_fica(struct amdgpu_device *adev,
     uint32_t ficaa_val)
{
 unsigned long flags, address, data;
 uint32_t ficadl_val, ficadh_val;

 address = adev->nbio_funcs->get_pcie_index_offset(adev);
 data = adev->nbio_funcs->get_pcie_data_offset(adev);

 spin_lock_irqsave(&adev->pcie_idx_lock, flags);
 WREG32(address, smnDF_PIE_AON_FabricIndirectConfigAccessAddress3);
 WREG32(data, ficaa_val);

 WREG32(address, smnDF_PIE_AON_FabricIndirectConfigAccessDataLo3);
 ficadl_val = RREG32(data);

 WREG32(address, smnDF_PIE_AON_FabricIndirectConfigAccessDataHi3);
 ficadh_val = RREG32(data);

 spin_unlock_irqrestore(&adev->pcie_idx_lock, flags);

 return (((ficadh_val & 0xFFFFFFFFFFFFFFFF) << 32) | ficadl_val);
}
