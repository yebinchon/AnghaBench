
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pp_hwmgr {scalar_t__ adev; } ;
struct amdgpu_device {int dummy; } ;


 scalar_t__ RREG32 (scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static bool baco_wait_register(struct pp_hwmgr *hwmgr, u32 reg, u32 mask, u32 value)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)(hwmgr->adev);
 u32 timeout = 5000, data;

 do {
  msleep(1);
  data = RREG32(reg);
  timeout--;
 } while (value != (data & mask) && (timeout != 0));

 if (timeout == 0)
  return 0;

 return 1;
}
