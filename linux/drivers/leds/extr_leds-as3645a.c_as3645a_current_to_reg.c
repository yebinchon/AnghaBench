
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flash_max_ua; int assist_max_ua; } ;
struct as3645a {TYPE_1__ cfg; } ;


 int AS_FLASH_INTENSITY_MIN ;
 int AS_FLASH_INTENSITY_STEP ;
 int AS_TORCH_INTENSITY_MIN ;
 int AS_TORCH_INTENSITY_STEP ;
 unsigned int __as3645a_current_to_reg (int ,int ,int ,unsigned int) ;

__attribute__((used)) static unsigned int as3645a_current_to_reg(struct as3645a *flash, bool is_flash,
        unsigned int ua)
{
 if (is_flash)
  return __as3645a_current_to_reg(AS_TORCH_INTENSITY_MIN,
      flash->cfg.assist_max_ua,
      AS_TORCH_INTENSITY_STEP, ua);
 else
  return __as3645a_current_to_reg(AS_FLASH_INTENSITY_MIN,
      flash->cfg.flash_max_ua,
      AS_FLASH_INTENSITY_STEP, ua);
}
