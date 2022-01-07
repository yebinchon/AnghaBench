
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_ring {int wptr_offs; int wptr; int doorbell_index; } ;
struct TYPE_2__ {int * wb; } ;
struct radeon_device {TYPE_1__ wb; } ;


 int WDOORBELL32 (int ,int ) ;

void cik_compute_set_wptr(struct radeon_device *rdev,
     struct radeon_ring *ring)
{

 rdev->wb.wb[ring->wptr_offs/4] = ring->wptr;
 WDOORBELL32(ring->doorbell_index, ring->wptr);
}
