
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int * ring; } ;


 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int cik_cp_gfx_enable (struct radeon_device*,int) ;
 int radeon_ring_fini (struct radeon_device*,int *) ;

__attribute__((used)) static void cik_cp_gfx_fini(struct radeon_device *rdev)
{
 cik_cp_gfx_enable(rdev, 0);
 radeon_ring_fini(rdev, &rdev->ring[RADEON_RING_TYPE_GFX_INDEX]);
}
