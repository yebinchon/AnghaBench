
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum adreno_rb_blend_factor { ____Placeholder_adreno_rb_blend_factor } adreno_rb_blend_factor ;


 int A3XX_RB_MRT_BLEND_CONTROL_RGB_DEST_FACTOR__MASK ;
 int A3XX_RB_MRT_BLEND_CONTROL_RGB_DEST_FACTOR__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_RB_MRT_BLEND_CONTROL_RGB_DEST_FACTOR(enum adreno_rb_blend_factor val)
{
 return ((val) << A3XX_RB_MRT_BLEND_CONTROL_RGB_DEST_FACTOR__SHIFT) & A3XX_RB_MRT_BLEND_CONTROL_RGB_DEST_FACTOR__MASK;
}
