
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cgs_device; } ;
struct amdgpu_device {TYPE_1__ acp; } ;


 int amdgpu_cgs_destroy_device (scalar_t__) ;

__attribute__((used)) static int acp_sw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (adev->acp.cgs_device)
  amdgpu_cgs_destroy_device(adev->acp.cgs_device);

 return 0;
}
