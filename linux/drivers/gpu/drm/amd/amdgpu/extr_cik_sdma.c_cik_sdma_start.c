
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int cik_ctx_switch_enable (struct amdgpu_device*,int) ;
 int cik_sdma_enable (struct amdgpu_device*,int) ;
 int cik_sdma_gfx_resume (struct amdgpu_device*) ;
 int cik_sdma_load_microcode (struct amdgpu_device*) ;
 int cik_sdma_rlc_resume (struct amdgpu_device*) ;

__attribute__((used)) static int cik_sdma_start(struct amdgpu_device *adev)
{
 int r;

 r = cik_sdma_load_microcode(adev);
 if (r)
  return r;


 cik_sdma_enable(adev, 0);

 cik_ctx_switch_enable(adev, 1);


 r = cik_sdma_gfx_resume(adev);
 if (r)
  return r;
 r = cik_sdma_rlc_resume(adev);
 if (r)
  return r;

 return 0;
}
