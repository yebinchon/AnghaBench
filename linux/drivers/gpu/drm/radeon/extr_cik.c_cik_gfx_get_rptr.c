
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_ring {int rptr_offs; } ;
struct TYPE_2__ {int * wb; scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ wb; } ;


 int CP_RB0_RPTR ;
 int RREG32 (int ) ;

u32 cik_gfx_get_rptr(struct radeon_device *rdev,
       struct radeon_ring *ring)
{
 u32 rptr;

 if (rdev->wb.enabled)
  rptr = rdev->wb.wb[ring->rptr_offs/4];
 else
  rptr = RREG32(CP_RB0_RPTR);

 return rptr;
}
