
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_SSP ;
 int SST (int ) ;
 int SSTU (int ) ;
 int SUMO_SST_DFLT ;
 int WREG32 (int ,int) ;
 int r600_calculate_u_and_p (int ,int ,int,int *,int *) ;
 int radeon_get_xclk (struct radeon_device*) ;

void sumo_program_sstp(struct radeon_device *rdev)
{
 u32 p, u;
 u32 xclk = radeon_get_xclk(rdev);

 r600_calculate_u_and_p(SUMO_SST_DFLT,
          xclk, 16, &p, &u);

 WREG32(CG_SSP, SSTU(u) | SST(p));
}
