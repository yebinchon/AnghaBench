
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int CG_AT_0 ;
 int CG_L (int ) ;
 int CG_L_MASK ;
 int CG_R (int) ;
 int CG_R_MASK ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void sumo_program_bootup_at(struct radeon_device *rdev)
{
 WREG32_P(CG_AT_0, CG_R(0xffff), ~CG_R_MASK);
 WREG32_P(CG_AT_0, CG_L(0), ~CG_L_MASK);
}
