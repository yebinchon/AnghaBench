
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int R600_TPC_DFLT ;
 int R600_TPU_DFLT ;
 int r600_set_tpc (struct radeon_device*,int ) ;
 int r600_set_tpu (struct radeon_device*,int ) ;

__attribute__((used)) static void rv6xx_program_tpp(struct radeon_device *rdev)
{
 r600_set_tpu(rdev, R600_TPU_DFLT);
 r600_set_tpc(rdev, R600_TPC_DFLT);
}
