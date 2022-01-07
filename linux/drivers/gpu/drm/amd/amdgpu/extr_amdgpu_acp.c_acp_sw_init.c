
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cgs_device; int parent; } ;
struct amdgpu_device {TYPE_1__ acp; int dev; } ;


 int EINVAL ;
 int amdgpu_cgs_create_device (struct amdgpu_device*) ;

__attribute__((used)) static int acp_sw_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 adev->acp.parent = adev->dev;

 adev->acp.cgs_device =
  amdgpu_cgs_create_device(adev);
 if (!adev->acp.cgs_device)
  return -EINVAL;

 return 0;
}
