
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_rb_blend_opcode { ____Placeholder_a3xx_rb_blend_opcode } a3xx_rb_blend_opcode ;


 int A3XX_RB_MRT_BLEND_CONTROL_RGB_BLEND_OPCODE__MASK ;
 int A3XX_RB_MRT_BLEND_CONTROL_RGB_BLEND_OPCODE__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_RB_MRT_BLEND_CONTROL_RGB_BLEND_OPCODE(enum a3xx_rb_blend_opcode val)
{
 return ((val) << A3XX_RB_MRT_BLEND_CONTROL_RGB_BLEND_OPCODE__SHIFT) & A3XX_RB_MRT_BLEND_CONTROL_RGB_BLEND_OPCODE__MASK;
}
