
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int * discovery; } ;


 int kfree (int *) ;

void amdgpu_discovery_fini(struct amdgpu_device *adev)
{
 kfree(adev->discovery);
 adev->discovery = ((void*)0);
}
