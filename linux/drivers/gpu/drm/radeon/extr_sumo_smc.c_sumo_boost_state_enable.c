
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int RCU_GPU_BOOST_DISABLE ;
 int RREG32_RCU (int ) ;
 int WREG32_RCU (int ,int) ;

void sumo_boost_state_enable(struct radeon_device *rdev, bool enable)
{
 u32 boost_disable = RREG32_RCU(RCU_GPU_BOOST_DISABLE);

 boost_disable &= 0xFFFFFFFE;
 boost_disable |= (enable ? 0 : 1);
 WREG32_RCU(RCU_GPU_BOOST_DISABLE, boost_disable);
}
