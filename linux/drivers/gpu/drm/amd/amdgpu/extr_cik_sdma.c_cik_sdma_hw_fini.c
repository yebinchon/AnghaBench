
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int cik_ctx_switch_enable (struct amdgpu_device*,int) ;
 int cik_sdma_enable (struct amdgpu_device*,int) ;

__attribute__((used)) static int cik_sdma_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 cik_ctx_switch_enable(adev, 0);
 cik_sdma_enable(adev, 0);

 return 0;
}
