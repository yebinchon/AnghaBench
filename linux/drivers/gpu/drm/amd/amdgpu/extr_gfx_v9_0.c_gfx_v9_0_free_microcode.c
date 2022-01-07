
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int register_list_format; } ;
struct TYPE_4__ {TYPE_1__ rlc; int * mec2_fw; int * mec_fw; int * rlc_fw; int * ce_fw; int * me_fw; int * pfp_fw; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int kfree (int ) ;
 int release_firmware (int *) ;

__attribute__((used)) static void gfx_v9_0_free_microcode(struct amdgpu_device *adev)
{
 release_firmware(adev->gfx.pfp_fw);
 adev->gfx.pfp_fw = ((void*)0);
 release_firmware(adev->gfx.me_fw);
 adev->gfx.me_fw = ((void*)0);
 release_firmware(adev->gfx.ce_fw);
 adev->gfx.ce_fw = ((void*)0);
 release_firmware(adev->gfx.rlc_fw);
 adev->gfx.rlc_fw = ((void*)0);
 release_firmware(adev->gfx.mec_fw);
 adev->gfx.mec_fw = ((void*)0);
 release_firmware(adev->gfx.mec2_fw);
 adev->gfx.mec2_fw = ((void*)0);

 kfree(adev->gfx.rlc.register_list_format);
}
