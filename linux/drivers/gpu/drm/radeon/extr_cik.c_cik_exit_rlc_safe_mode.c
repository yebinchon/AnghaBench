
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int MESSAGE (int ) ;
 int MSG_EXIT_RLC_SAFE_MODE ;
 int REQ ;
 int RLC_GPR_REG2 ;
 int WREG32 (int ,int) ;

void cik_exit_rlc_safe_mode(struct radeon_device *rdev)
{
 u32 tmp;

 tmp = REQ | MESSAGE(MSG_EXIT_RLC_SAFE_MODE);
 WREG32(RLC_GPR_REG2, tmp);
}
