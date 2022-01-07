
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_GICST (int ) ;
 int CG_GICST_MASK ;
 int CG_GIT ;
 int SUMO_GICST_DFLT ;
 int WREG32_P (int ,int ,int ) ;
 int r600_calculate_u_and_p (int ,int ,int,int *,int *) ;
 int radeon_get_xclk (struct radeon_device*) ;

__attribute__((used)) static void sumo_program_git(struct radeon_device *rdev)
{
 u32 p, u;
 u32 xclk = radeon_get_xclk(rdev);

 r600_calculate_u_and_p(SUMO_GICST_DFLT,
          xclk, 16, &p, &u);

 WREG32_P(CG_GIT, CG_GICST(p), ~CG_GICST_MASK);
}
