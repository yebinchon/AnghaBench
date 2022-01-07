
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ num_doorbells; scalar_t__ ptr; } ;
struct radeon_device {TYPE_1__ doorbell; } ;


 int DRM_ERROR (char*,scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

void cik_mm_wdoorbell(struct radeon_device *rdev, u32 index, u32 v)
{
 if (index < rdev->doorbell.num_doorbells) {
  writel(v, rdev->doorbell.ptr + index);
 } else {
  DRM_ERROR("writing beyond doorbell aperture: 0x%08x!\n", index);
 }
}
