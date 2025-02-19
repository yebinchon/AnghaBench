
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ num_doorbells; scalar_t__ ptr; } ;
struct amdgpu_device {TYPE_1__ doorbell; } ;


 int DRM_ERROR (char*,scalar_t__) ;
 scalar_t__ readl (scalar_t__) ;

u32 amdgpu_mm_rdoorbell(struct amdgpu_device *adev, u32 index)
{
 if (index < adev->doorbell.num_doorbells) {
  return readl(adev->doorbell.ptr + index);
 } else {
  DRM_ERROR("reading beyond doorbell aperture: 0x%08x!\n", index);
  return 0;
 }
}
