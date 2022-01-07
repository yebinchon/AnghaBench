
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int mmCONFIG_MEMSIZE ;

__attribute__((used)) static u32 cik_get_config_memsize(struct amdgpu_device *adev)
{
 return RREG32(mmCONFIG_MEMSIZE);
}
