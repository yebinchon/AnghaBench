
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int RLC_CNTL ;
 int RLC_ENABLE ;
 int WREG32 (int ,int ) ;

__attribute__((used)) static void r600_rlc_start(struct radeon_device *rdev)
{
 WREG32(RLC_CNTL, RLC_ENABLE);
}
