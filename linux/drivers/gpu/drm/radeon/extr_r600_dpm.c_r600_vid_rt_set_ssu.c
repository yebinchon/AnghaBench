
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int SSTU (int ) ;
 int SSTU_MASK ;
 int VID_RT ;
 int WREG32_P (int ,int ,int ) ;

void r600_vid_rt_set_ssu(struct radeon_device *rdev, u32 u)
{
 WREG32_P(VID_RT, SSTU(u), ~SSTU_MASK);
}
