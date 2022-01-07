
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int reg; } ;
typedef TYPE_1__ i915_reg_t ;



__attribute__((used)) static inline u32 i915_mmio_reg_offset(i915_reg_t reg)
{
 return reg.reg;
}
