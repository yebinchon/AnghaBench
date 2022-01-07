
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {unsigned int usec_timeout; } ;


 int ETIMEDOUT ;
 scalar_t__ vce_v2_0_is_idle (void*) ;

__attribute__((used)) static int vce_v2_0_wait_for_idle(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 unsigned i;

 for (i = 0; i < adev->usec_timeout; i++) {
  if (vce_v2_0_is_idle(handle))
   return 0;
 }
 return -ETIMEDOUT;
}
