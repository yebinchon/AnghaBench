
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int R600_SSTU_DFLT ;
 int R600_SST_DFLT ;
 int r600_set_sst (struct radeon_device*,int ) ;
 int r600_set_sstu (struct radeon_device*,int ) ;

__attribute__((used)) static void rv6xx_program_sstp(struct radeon_device *rdev)
{
 r600_set_sstu(rdev, R600_SSTU_DFLT);
 r600_set_sst(rdev, R600_SST_DFLT);
}
