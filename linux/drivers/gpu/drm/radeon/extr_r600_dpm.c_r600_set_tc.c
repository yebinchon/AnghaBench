
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 scalar_t__ CG_FFCT_0 ;
 int DTC_0 (int) ;
 int UTC_0 (int) ;
 int WREG32 (scalar_t__,int) ;

void r600_set_tc(struct radeon_device *rdev,
   u32 index, u32 u_t, u32 d_t)
{
 WREG32(CG_FFCT_0 + (index * 4), UTC_0(u_t) | DTC_0(d_t));
}
