
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_device {int pcie_idx_lock; TYPE_1__* nbio_funcs; } ;
struct TYPE_2__ {unsigned long (* get_pcie_index_offset ) (struct amdgpu_device*) ;unsigned long (* get_pcie_data_offset ) (struct amdgpu_device*) ;} ;


 int WREG32 (unsigned long,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long stub1 (struct amdgpu_device*) ;
 unsigned long stub2 (struct amdgpu_device*) ;

__attribute__((used)) static void df_v3_6_perfmon_wreg(struct amdgpu_device *adev, uint32_t lo_addr,
       uint32_t lo_val, uint32_t hi_addr, uint32_t hi_val)
{
 unsigned long flags, address, data;

 address = adev->nbio_funcs->get_pcie_index_offset(adev);
 data = adev->nbio_funcs->get_pcie_data_offset(adev);

 spin_lock_irqsave(&adev->pcie_idx_lock, flags);
 WREG32(address, lo_addr);
 WREG32(data, lo_val);
 WREG32(address, hi_addr);
 WREG32(data, hi_val);
 spin_unlock_irqrestore(&adev->pcie_idx_lock, flags);
}
