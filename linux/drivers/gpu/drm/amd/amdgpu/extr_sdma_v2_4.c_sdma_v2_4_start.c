
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int sdma_v2_4_enable (struct amdgpu_device*,int) ;
 int sdma_v2_4_gfx_resume (struct amdgpu_device*) ;
 int sdma_v2_4_rlc_resume (struct amdgpu_device*) ;

__attribute__((used)) static int sdma_v2_4_start(struct amdgpu_device *adev)
{
 int r;


 sdma_v2_4_enable(adev, 0);


 r = sdma_v2_4_gfx_resume(adev);
 if (r)
  return r;
 r = sdma_v2_4_rlc_resume(adev);
 if (r)
  return r;

 return 0;
}
