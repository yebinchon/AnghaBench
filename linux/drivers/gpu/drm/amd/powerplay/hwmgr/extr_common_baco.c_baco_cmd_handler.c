
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pp_hwmgr {scalar_t__ adev; } ;
struct amdgpu_device {int dev; } ;







 int RREG32 (int) ;
 int WREG32 (int,int) ;
 int baco_wait_register (struct pp_hwmgr*,int,int,int) ;
 int dev_warn (int ,char*) ;
 int msleep (int) ;
 int udelay (int) ;

__attribute__((used)) static bool baco_cmd_handler(struct pp_hwmgr *hwmgr, u32 command, u32 reg, u32 mask,
           u32 shift, u32 value, u32 timeout)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)(hwmgr->adev);
 u32 data;
 bool ret = 1;

 switch (command) {
 case 128:
  WREG32(reg, value << shift);
  break;
 case 130:
  data = RREG32(reg);
  data = (data & (~mask)) | (value << shift);
  WREG32(reg, data);
  break;
 case 129:
  ret = baco_wait_register(hwmgr, reg, mask, value);
  break;
 case 132:
  if (timeout)

   msleep(timeout);
  break;
 case 131:
  if (timeout)

   udelay(timeout);
  break;

 default:
  dev_warn(adev->dev, "Invalid BACO command.\n");
  ret = 0;
 }

 return ret;
}
