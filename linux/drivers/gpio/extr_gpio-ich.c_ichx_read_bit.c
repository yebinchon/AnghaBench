
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int* outlvl_cache; int lock; TYPE_1__* desc; int gpio_base; } ;
struct TYPE_3__ {scalar_t__ use_outlvl_cache; int ** regs; } ;


 int BIT (int) ;
 int GPIO_LVL ;
 int ICHX_READ (int ,int ) ;
 TYPE_2__ ichx_priv ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ichx_read_bit(int reg, unsigned nr)
{
 unsigned long flags;
 u32 data;
 int reg_nr = nr / 32;
 int bit = nr & 0x1f;

 spin_lock_irqsave(&ichx_priv.lock, flags);

 data = ICHX_READ(ichx_priv.desc->regs[reg][reg_nr],
    ichx_priv.gpio_base);

 if (reg == GPIO_LVL && ichx_priv.desc->use_outlvl_cache)
  data = ichx_priv.outlvl_cache[reg_nr] | data;

 spin_unlock_irqrestore(&ichx_priv.lock, flags);

 return !!(data & BIT(bit));
}
