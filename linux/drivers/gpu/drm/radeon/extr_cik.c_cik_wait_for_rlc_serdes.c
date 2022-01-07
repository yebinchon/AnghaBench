
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ max_shader_engines; scalar_t__ max_sh_per_se; } ;
struct TYPE_4__ {TYPE_1__ cik; } ;
struct radeon_device {scalar_t__ usec_timeout; TYPE_2__ config; } ;


 scalar_t__ GC_MASTER_BUSY ;
 int RLC_SERDES_CU_MASTER_BUSY ;
 int RLC_SERDES_NONCU_MASTER_BUSY ;
 scalar_t__ RREG32 (int ) ;
 scalar_t__ SE_MASTER_BUSY_MASK ;
 scalar_t__ TC0_MASTER_BUSY ;
 scalar_t__ TC1_MASTER_BUSY ;
 int cik_select_se_sh (struct radeon_device*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void cik_wait_for_rlc_serdes(struct radeon_device *rdev)
{
 u32 i, j, k;
 u32 mask;

 for (i = 0; i < rdev->config.cik.max_shader_engines; i++) {
  for (j = 0; j < rdev->config.cik.max_sh_per_se; j++) {
   cik_select_se_sh(rdev, i, j);
   for (k = 0; k < rdev->usec_timeout; k++) {
    if (RREG32(RLC_SERDES_CU_MASTER_BUSY) == 0)
     break;
    udelay(1);
   }
  }
 }
 cik_select_se_sh(rdev, 0xffffffff, 0xffffffff);

 mask = SE_MASTER_BUSY_MASK | GC_MASTER_BUSY | TC0_MASTER_BUSY | TC1_MASTER_BUSY;
 for (k = 0; k < rdev->usec_timeout; k++) {
  if ((RREG32(RLC_SERDES_NONCU_MASTER_BUSY) & mask) == 0)
   break;
  udelay(1);
 }
}
