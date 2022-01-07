
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_rb_blend_factor { ____Placeholder_adreno_rb_blend_factor } adreno_rb_blend_factor ;


 int A2XX_RB_BLEND_CONTROL_COLOR_SRCBLEND__MASK ;
 int A2XX_RB_BLEND_CONTROL_COLOR_SRCBLEND__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_RB_BLEND_CONTROL_COLOR_SRCBLEND(enum adreno_rb_blend_factor val)
{
 return ((val) << A2XX_RB_BLEND_CONTROL_COLOR_SRCBLEND__SHIFT) & A2XX_RB_BLEND_CONTROL_COLOR_SRCBLEND__MASK;
}
