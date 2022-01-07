
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DOWN_SCALE_RATIO_MAX ;
 int EINVAL ;
 int EOVERFLOW ;
 int PHASE_STEP_SHIFT ;
 int mult_frac (int,int,int) ;

__attribute__((used)) static int calc_phase_step(uint32_t src, uint32_t dst, uint32_t *out_phase)
{
 uint32_t unit;

 if (src == 0 || dst == 0)
  return -EINVAL;







 if (src > (dst * DOWN_SCALE_RATIO_MAX))
  return -EOVERFLOW;

 unit = 1 << PHASE_STEP_SHIFT;
 *out_phase = mult_frac(unit, src, dst);

 return 0;
}
