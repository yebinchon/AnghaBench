
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int CG_SSP ;
 int R600_SSTU_DFLT ;
 int R600_SST_DFLT ;
 int SST (int ) ;
 int SSTU (int ) ;
 int WREG32_SMC (int ,int) ;

__attribute__((used)) static void ci_program_sstp(struct radeon_device *rdev)
{
 WREG32_SMC(CG_SSP, (SSTU(R600_SSTU_DFLT) | SST(R600_SST_DFLT)));
}
