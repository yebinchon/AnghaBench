
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int VID_CRT (int ) ;
 int VID_CRT_MASK ;
 int VID_RT ;
 int WREG32_P (int ,int ,int ) ;

void r600_vid_rt_set_vrt(struct radeon_device *rdev, u32 rt)
{
 WREG32_P(VID_RT, VID_CRT(rt), ~VID_CRT_MASK);
}
