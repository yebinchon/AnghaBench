
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ num_doorbells; scalar_t__ ptr; } ;
struct amdgpu_device {TYPE_1__ doorbell; } ;
typedef int atomic64_t ;


 int DRM_ERROR (char*,scalar_t__) ;
 int atomic64_set (int *,int ) ;

void amdgpu_mm_wdoorbell64(struct amdgpu_device *adev, u32 index, u64 v)
{
 if (index < adev->doorbell.num_doorbells) {
  atomic64_set((atomic64_t *)(adev->doorbell.ptr + index), v);
 } else {
  DRM_ERROR("writing beyond doorbell aperture: 0x%08x!\n", index);
 }
}
