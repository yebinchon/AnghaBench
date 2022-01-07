
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct amdgpu_device {int dummy; } ;
typedef int data ;


 int amdgpu_si_copy_bytes_to_smc (struct amdgpu_device*,int,int const*,int,int) ;

int amdgpu_si_program_jump_on_start(struct amdgpu_device *adev)
{
 static const u8 data[] = { 0x0E, 0x00, 0x40, 0x40 };

 return amdgpu_si_copy_bytes_to_smc(adev, 0x0, data, 4, sizeof(data)+1);
}
