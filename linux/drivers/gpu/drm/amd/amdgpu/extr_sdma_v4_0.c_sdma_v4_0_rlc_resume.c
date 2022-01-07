
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int sdma_v4_0_init_pg (struct amdgpu_device*) ;

__attribute__((used)) static int sdma_v4_0_rlc_resume(struct amdgpu_device *adev)
{
 sdma_v4_0_init_pg(adev);

 return 0;
}
