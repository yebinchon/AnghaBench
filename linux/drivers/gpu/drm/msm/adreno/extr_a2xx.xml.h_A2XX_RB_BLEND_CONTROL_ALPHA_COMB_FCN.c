
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a2xx_rb_blend_opcode { ____Placeholder_a2xx_rb_blend_opcode } a2xx_rb_blend_opcode ;


 int A2XX_RB_BLEND_CONTROL_ALPHA_COMB_FCN__MASK ;
 int A2XX_RB_BLEND_CONTROL_ALPHA_COMB_FCN__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_RB_BLEND_CONTROL_ALPHA_COMB_FCN(enum a2xx_rb_blend_opcode val)
{
 return ((val) << A2XX_RB_BLEND_CONTROL_ALPHA_COMB_FCN__SHIFT) & A2XX_RB_BLEND_CONTROL_ALPHA_COMB_FCN__MASK;
}
