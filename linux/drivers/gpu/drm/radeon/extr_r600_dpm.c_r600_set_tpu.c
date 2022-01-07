
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_TPC ;
 int TPU (int ) ;
 int TPU_MASK ;
 int WREG32_P (int ,int ,int ) ;

void r600_set_tpu(struct radeon_device *rdev, u32 u)
{
 WREG32_P(CG_TPC, TPU(u), ~TPU_MASK);
}
