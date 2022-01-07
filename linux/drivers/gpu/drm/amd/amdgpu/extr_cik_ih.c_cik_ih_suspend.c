
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int cik_ih_hw_fini (struct amdgpu_device*) ;

__attribute__((used)) static int cik_ih_suspend(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 return cik_ih_hw_fini(adev);
}
