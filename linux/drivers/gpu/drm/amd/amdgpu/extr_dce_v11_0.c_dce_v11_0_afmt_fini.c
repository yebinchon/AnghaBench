
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_dig; int ** afmt; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;


 int kfree (int *) ;

__attribute__((used)) static void dce_v11_0_afmt_fini(struct amdgpu_device *adev)
{
 int i;

 for (i = 0; i < adev->mode_info.num_dig; i++) {
  kfree(adev->mode_info.afmt[i]);
  adev->mode_info.afmt[i] = ((void*)0);
 }
}
