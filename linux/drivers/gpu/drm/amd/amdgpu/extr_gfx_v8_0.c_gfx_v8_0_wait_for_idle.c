
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {unsigned int usec_timeout; } ;


 int ETIMEDOUT ;
 scalar_t__ gfx_v8_0_is_idle (void*) ;
 int udelay (int) ;

__attribute__((used)) static int gfx_v8_0_wait_for_idle(void *handle)
{
 unsigned int i;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 for (i = 0; i < adev->usec_timeout; i++) {
  if (gfx_v8_0_is_idle(handle))
   return 0;

  udelay(1);
 }
 return -ETIMEDOUT;
}
