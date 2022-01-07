
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amdgpu_device {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int dce_virtual_crtc_get_scanoutpos(struct amdgpu_device *adev, int crtc,
     u32 *vbl, u32 *position)
{
 *vbl = 0;
 *position = 0;

 return -EINVAL;
}
