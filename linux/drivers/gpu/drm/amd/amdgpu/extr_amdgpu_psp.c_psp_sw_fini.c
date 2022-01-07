
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ta_fw; int * asd_fw; int * sos_fw; } ;
struct amdgpu_device {TYPE_1__ psp; } ;


 int release_firmware (int *) ;

__attribute__((used)) static int psp_sw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 release_firmware(adev->psp.sos_fw);
 adev->psp.sos_fw = ((void*)0);
 release_firmware(adev->psp.asd_fw);
 adev->psp.asd_fw = ((void*)0);
 if (adev->psp.ta_fw) {
  release_firmware(adev->psp.ta_fw);
  adev->psp.ta_fw = ((void*)0);
 }
 return 0;
}
