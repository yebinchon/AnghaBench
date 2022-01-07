
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int DMA_PGFSM_CONFIG ;
 int DMA_PGFSM_WRITE ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void si_init_dma_pg(struct radeon_device *rdev)
{
 u32 tmp;

 WREG32(DMA_PGFSM_WRITE, 0x00002000);
 WREG32(DMA_PGFSM_CONFIG, 0x100010ff);

 for (tmp = 0; tmp < 5; tmp++)
  WREG32(DMA_PGFSM_WRITE, 0);
}
