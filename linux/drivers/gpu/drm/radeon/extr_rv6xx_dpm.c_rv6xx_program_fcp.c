
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int R600_FCTU_DFLT ;
 int R600_FCT_DFLT ;
 int r600_set_fct (struct radeon_device*,int ) ;
 int r600_set_fctu (struct radeon_device*,int ) ;

__attribute__((used)) static void rv6xx_program_fcp(struct radeon_device *rdev)
{
 r600_set_fctu(rdev, R600_FCTU_DFLT);
 r600_set_fct(rdev, R600_FCT_DFLT);
}
