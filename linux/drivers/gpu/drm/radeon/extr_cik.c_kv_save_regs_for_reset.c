
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct kv_reset_save_regs {int gmcon_reng_execute; int gmcon_misc; void* gmcon_misc3; } ;


 int GMCON_MISC ;
 int GMCON_MISC3 ;
 int GMCON_RENG_EXECUTE ;
 int RENG_EXECUTE_ON_PWR_UP ;
 int RENG_EXECUTE_ON_REG_UPDATE ;
 void* RREG32 (int ) ;
 int STCTRL_STUTTER_EN ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void kv_save_regs_for_reset(struct radeon_device *rdev,
       struct kv_reset_save_regs *save)
{
 save->gmcon_reng_execute = RREG32(GMCON_RENG_EXECUTE);
 save->gmcon_misc = RREG32(GMCON_MISC);
 save->gmcon_misc3 = RREG32(GMCON_MISC3);

 WREG32(GMCON_RENG_EXECUTE, save->gmcon_reng_execute & ~RENG_EXECUTE_ON_PWR_UP);
 WREG32(GMCON_MISC, save->gmcon_misc & ~(RENG_EXECUTE_ON_REG_UPDATE |
      STCTRL_STUTTER_EN));
}
