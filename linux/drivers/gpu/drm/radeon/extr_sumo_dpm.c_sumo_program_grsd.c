
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_GCOOR ;
 int PHC (int) ;
 int SDC (int) ;
 int SU (int) ;
 int WREG32 (int ,int) ;
 int r600_calculate_u_and_p (int,int,int,int*,int*) ;
 int radeon_get_xclk (struct radeon_device*) ;

__attribute__((used)) static void sumo_program_grsd(struct radeon_device *rdev)
{
 u32 p, u;
 u32 xclk = radeon_get_xclk(rdev);
 u32 grs = 256 * 25 / 100;

 r600_calculate_u_and_p(1, xclk, 14, &p, &u);

 WREG32(CG_GCOOR, PHC(grs) | SDC(p) | SU(u));
}
