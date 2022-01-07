
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int NBIO ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int mmPCIE_INDEX2 ;

__attribute__((used)) static u32 nbio_v6_1_get_pcie_index_offset(struct amdgpu_device *adev)
{
 return SOC15_REG_OFFSET(NBIO, 0, mmPCIE_INDEX2);
}
