
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i915_reg_t ;


 unsigned int INVALID_INDEX ;
 unsigned int i915_mmio_reg_offset (int ) ;

__attribute__((used)) static unsigned int calc_index(unsigned int offset, unsigned int start,
 unsigned int next, unsigned int end, i915_reg_t i915_end)
{
 unsigned int range = next - start;

 if (!end)
  end = i915_mmio_reg_offset(i915_end);
 if (offset < start || offset > end)
  return INVALID_INDEX;
 offset -= start;
 return offset / range;
}
