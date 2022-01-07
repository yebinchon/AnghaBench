
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int si_program_display_gap (struct amdgpu_device*) ;

__attribute__((used)) static void si_dpm_display_configuration_changed(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 si_program_display_gap(adev);
}
