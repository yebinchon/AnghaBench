
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct amdgpu_device {int pcie_idx_lock; TYPE_1__* nbio_funcs; } ;
struct TYPE_2__ {unsigned long (* get_pcie_index_offset ) (struct amdgpu_device*) ;unsigned long (* get_pcie_data_offset ) (struct amdgpu_device*) ;} ;


 int RREG32 (unsigned long) ;
 int WREG32 (unsigned long,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long stub1 (struct amdgpu_device*) ;
 unsigned long stub2 (struct amdgpu_device*) ;

__attribute__((used)) static u64 soc15_pcie_rreg64(struct amdgpu_device *adev, u32 reg)
{
 unsigned long flags, address, data;
 u64 r;
 address = adev->nbio_funcs->get_pcie_index_offset(adev);
 data = adev->nbio_funcs->get_pcie_data_offset(adev);

 spin_lock_irqsave(&adev->pcie_idx_lock, flags);

 WREG32(address, reg);
 (void)RREG32(address);
 r = RREG32(data);


 WREG32(address, reg + 4);
 (void)RREG32(address);
 r |= ((u64)RREG32(data) << 32);
 spin_unlock_irqrestore(&adev->pcie_idx_lock, flags);
 return r;
}
