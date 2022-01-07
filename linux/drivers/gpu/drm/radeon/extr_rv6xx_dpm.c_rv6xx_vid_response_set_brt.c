
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int BRT (int ) ;
 int BRT_MASK ;
 int VID_RT ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void rv6xx_vid_response_set_brt(struct radeon_device *rdev, u32 rt)
{
 WREG32_P(VID_RT, BRT(rt), ~BRT_MASK);
}
