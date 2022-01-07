
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct radeon_device {int dummy; } ;


 int LC_CURRENT_DATA_RATE_MASK ;
 int LC_CURRENT_DATA_RATE_SHIFT ;
 int PCIE_LC_SPEED_CNTL ;
 int RREG32_PCIE_PORT (int ) ;

__attribute__((used)) static u16 si_get_current_pcie_speed(struct radeon_device *rdev)
{
 u32 speed_cntl;

 speed_cntl = RREG32_PCIE_PORT(PCIE_LC_SPEED_CNTL) & LC_CURRENT_DATA_RATE_MASK;
 speed_cntl >>= LC_CURRENT_DATA_RATE_SHIFT;

 return (u16)speed_cntl;
}
