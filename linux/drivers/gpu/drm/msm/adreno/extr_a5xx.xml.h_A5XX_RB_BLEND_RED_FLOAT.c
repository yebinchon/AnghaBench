
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A5XX_RB_BLEND_RED_FLOAT__MASK ;
 int A5XX_RB_BLEND_RED_FLOAT__SHIFT ;
 int util_float_to_half (float) ;

__attribute__((used)) static inline uint32_t A5XX_RB_BLEND_RED_FLOAT(float val)
{
 return ((util_float_to_half(val)) << A5XX_RB_BLEND_RED_FLOAT__SHIFT) & A5XX_RB_BLEND_RED_FLOAT__MASK;
}
