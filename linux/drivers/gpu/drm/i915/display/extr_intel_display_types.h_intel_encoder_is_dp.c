
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_encoder {int type; int base; } ;
struct TYPE_2__ {int output_reg; } ;





 TYPE_1__* enc_to_intel_dp (int *) ;
 int i915_mmio_reg_valid (int ) ;

__attribute__((used)) static inline bool intel_encoder_is_dp(struct intel_encoder *encoder)
{
 switch (encoder->type) {
 case 129:
 case 128:
  return 1;
 case 130:

  return i915_mmio_reg_valid(enc_to_intel_dp(&encoder->base)->output_reg);
 default:
  return 0;
 }
}
