
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int RREG32 (int ) ;
 int R_000040_GEN_INT_CNTL ;
 int R_000044_GEN_INT_STATUS ;
 int WREG32 (int ,int ) ;
 int mdelay (int) ;

void r100_irq_disable(struct radeon_device *rdev)
{
 u32 tmp;

 WREG32(R_000040_GEN_INT_CNTL, 0);

 mdelay(1);
 tmp = RREG32(R_000044_GEN_INT_STATUS);
 WREG32(R_000044_GEN_INT_STATUS, tmp);
}
