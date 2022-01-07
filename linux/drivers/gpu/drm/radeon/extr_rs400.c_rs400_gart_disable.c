
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;


 int RREG32_MC (int ) ;
 int RS480_AGP_ADDRESS_SPACE_SIZE ;
 int RS690_AIC_CTRL_SCRATCH ;
 int RS690_DIS_OUT_OF_PCI_GART_ACCESS ;
 int WREG32_MC (int ,int ) ;

void rs400_gart_disable(struct radeon_device *rdev)
{
 uint32_t tmp;

 tmp = RREG32_MC(RS690_AIC_CTRL_SCRATCH);
 tmp |= RS690_DIS_OUT_OF_PCI_GART_ACCESS;
 WREG32_MC(RS690_AIC_CTRL_SCRATCH, tmp);
 WREG32_MC(RS480_AGP_ADDRESS_SPACE_SIZE, 0);
}
