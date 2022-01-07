
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int lock; } ;
typedef int reg_value ;
typedef int i915_reg_t ;


 int FW_REG_READ ;
 int __intel_wait_for_register_fw (struct intel_uncore*,int ,int,int,unsigned int,int ,int*) ;
 int __wait_for (int,int,unsigned int,int,int) ;
 unsigned int intel_uncore_forcewake_for_reg (struct intel_uncore*,int ,int ) ;
 int intel_uncore_forcewake_get__locked (struct intel_uncore*,unsigned int) ;
 int intel_uncore_forcewake_put__locked (struct intel_uncore*,unsigned int) ;
 int intel_uncore_read_notrace (struct intel_uncore*,int ) ;
 int might_sleep_if (unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int trace_i915_reg_rw (int,int ,int,int,int) ;

int __intel_wait_for_register(struct intel_uncore *uncore,
         i915_reg_t reg,
         u32 mask,
         u32 value,
         unsigned int fast_timeout_us,
         unsigned int slow_timeout_ms,
         u32 *out_value)
{
 unsigned fw =
  intel_uncore_forcewake_for_reg(uncore, reg, FW_REG_READ);
 u32 reg_value;
 int ret;

 might_sleep_if(slow_timeout_ms);

 spin_lock_irq(&uncore->lock);
 intel_uncore_forcewake_get__locked(uncore, fw);

 ret = __intel_wait_for_register_fw(uncore,
        reg, mask, value,
        fast_timeout_us, 0, &reg_value);

 intel_uncore_forcewake_put__locked(uncore, fw);
 spin_unlock_irq(&uncore->lock);

 if (ret && slow_timeout_ms)
  ret = __wait_for(reg_value = intel_uncore_read_notrace(uncore,
               reg),
     (reg_value & mask) == value,
     slow_timeout_ms * 1000, 10, 1000);


 trace_i915_reg_rw(0, reg, reg_value, sizeof(reg_value), 1);

 if (out_value)
  *out_value = reg_value;

 return ret;
}
