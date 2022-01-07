
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ce_fw; int pfp_fw; int me_fw; } ;
struct amdgpu_device {int dev; TYPE_1__ gfx; } ;


 int EINVAL ;
 int dev_err (int ,char*,int) ;
 int gfx_v10_0_cp_gfx_enable (struct amdgpu_device*,int) ;
 int gfx_v10_0_cp_gfx_load_ce_microcode (struct amdgpu_device*) ;
 int gfx_v10_0_cp_gfx_load_me_microcode (struct amdgpu_device*) ;
 int gfx_v10_0_cp_gfx_load_pfp_microcode (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v10_0_cp_gfx_load_microcode(struct amdgpu_device *adev)
{
 int r;

 if (!adev->gfx.me_fw || !adev->gfx.pfp_fw || !adev->gfx.ce_fw)
  return -EINVAL;

 gfx_v10_0_cp_gfx_enable(adev, 0);

 r = gfx_v10_0_cp_gfx_load_pfp_microcode(adev);
 if (r) {
  dev_err(adev->dev, "(%d) failed to load pfp fw\n", r);
  return r;
 }

 r = gfx_v10_0_cp_gfx_load_ce_microcode(adev);
 if (r) {
  dev_err(adev->dev, "(%d) failed to load ce fw\n", r);
  return r;
 }

 r = gfx_v10_0_cp_gfx_load_me_microcode(adev);
 if (r) {
  dev_err(adev->dev, "(%d) failed to load me fw\n", r);
  return r;
 }

 return 0;
}
