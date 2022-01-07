
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int * ring; } ;


 size_t CAYMAN_RING_TYPE_DMA1_INDEX ;
 size_t R600_RING_TYPE_DMA_INDEX ;
 int cik_sdma_enable (struct radeon_device*,int) ;
 int radeon_ring_fini (struct radeon_device*,int *) ;

void cik_sdma_fini(struct radeon_device *rdev)
{

 cik_sdma_enable(rdev, 0);
 radeon_ring_fini(rdev, &rdev->ring[R600_RING_TYPE_DMA_INDEX]);
 radeon_ring_fini(rdev, &rdev->ring[CAYMAN_RING_TYPE_DMA1_INDEX]);

}
