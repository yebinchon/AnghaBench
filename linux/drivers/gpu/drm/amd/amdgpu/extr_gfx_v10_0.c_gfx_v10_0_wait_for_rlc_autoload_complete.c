
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ load_type; } ;
struct amdgpu_device {int usec_timeout; TYPE_1__ firmware; int dev; } ;


 scalar_t__ AMDGPU_FW_LOAD_RLC_BACKDOOR_AUTO ;
 int BOOTLOAD_COMPLETE ;
 int ETIMEDOUT ;
 int GC ;
 int REG_GET_FIELD (scalar_t__,int ,int ) ;
 int RLC_RLCS_BOOTLOAD_STATUS ;
 scalar_t__ RREG32_SOC15 (int ,int ,int ) ;
 int dev_err (int ,char*) ;
 int gfx_v10_0_rlc_backdoor_autoload_config_ce_cache (struct amdgpu_device*) ;
 int gfx_v10_0_rlc_backdoor_autoload_config_me_cache (struct amdgpu_device*) ;
 int gfx_v10_0_rlc_backdoor_autoload_config_mec_cache (struct amdgpu_device*) ;
 int gfx_v10_0_rlc_backdoor_autoload_config_pfp_cache (struct amdgpu_device*) ;
 int mmCP_STAT ;
 int mmRLC_RLCS_BOOTLOAD_STATUS ;
 int udelay (int) ;

__attribute__((used)) static int gfx_v10_0_wait_for_rlc_autoload_complete(struct amdgpu_device *adev)
{
 uint32_t cp_status;
 uint32_t bootload_status;
 int i, r;

 for (i = 0; i < adev->usec_timeout; i++) {
  cp_status = RREG32_SOC15(GC, 0, mmCP_STAT);
  bootload_status = RREG32_SOC15(GC, 0, mmRLC_RLCS_BOOTLOAD_STATUS);
  if ((cp_status == 0) &&
      (REG_GET_FIELD(bootload_status,
   RLC_RLCS_BOOTLOAD_STATUS, BOOTLOAD_COMPLETE) == 1)) {
   break;
  }
  udelay(1);
 }

 if (i >= adev->usec_timeout) {
  dev_err(adev->dev, "rlc autoload: gc ucode autoload timeout\n");
  return -ETIMEDOUT;
 }

 if (adev->firmware.load_type == AMDGPU_FW_LOAD_RLC_BACKDOOR_AUTO) {
  r = gfx_v10_0_rlc_backdoor_autoload_config_me_cache(adev);
  if (r)
   return r;

  r = gfx_v10_0_rlc_backdoor_autoload_config_ce_cache(adev);
  if (r)
   return r;

  r = gfx_v10_0_rlc_backdoor_autoload_config_pfp_cache(adev);
  if (r)
   return r;

  r = gfx_v10_0_rlc_backdoor_autoload_config_mec_cache(adev);
  if (r)
   return r;
 }

 return 0;
}
