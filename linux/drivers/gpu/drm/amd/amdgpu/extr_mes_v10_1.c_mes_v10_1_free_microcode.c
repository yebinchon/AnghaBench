
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fw; } ;
struct amdgpu_device {TYPE_1__ mes; } ;


 int release_firmware (int *) ;

__attribute__((used)) static void mes_v10_1_free_microcode(struct amdgpu_device *adev)
{
 release_firmware(adev->mes.fw);
 adev->mes.fw = ((void*)0);
}
