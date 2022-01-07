
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dpu_hw_ctl {int dummy; } ;
typedef enum dpu_lm { ____Placeholder_dpu_lm } dpu_lm ;


 int BIT (int) ;
 int CTL_FLUSH_MASK_CTL ;
 int EINVAL ;







__attribute__((used)) static uint32_t dpu_hw_ctl_get_bitmask_mixer(struct dpu_hw_ctl *ctx,
 enum dpu_lm lm)
{
 uint32_t flushbits = 0;

 switch (lm) {
 case 133:
  flushbits = BIT(6);
  break;
 case 132:
  flushbits = BIT(7);
  break;
 case 131:
  flushbits = BIT(8);
  break;
 case 130:
  flushbits = BIT(9);
  break;
 case 129:
  flushbits = BIT(10);
  break;
 case 128:
  flushbits = BIT(20);
  break;
 default:
  return -EINVAL;
 }

 flushbits |= CTL_FLUSH_MASK_CTL;

 return flushbits;
}
