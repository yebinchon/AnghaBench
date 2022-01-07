
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_ring {int rptr_offs; } ;
struct TYPE_2__ {int * wb; scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ wb; } ;


 int RADEON_CP_RB_RPTR ;
 int RREG32 (int ) ;
 int le32_to_cpu (int ) ;

u32 r100_gfx_get_rptr(struct radeon_device *rdev,
        struct radeon_ring *ring)
{
 u32 rptr;

 if (rdev->wb.enabled)
  rptr = le32_to_cpu(rdev->wb.wb[ring->rptr_offs/4]);
 else
  rptr = RREG32(RADEON_CP_RB_RPTR);

 return rptr;
}
