
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A3XX_RB_BLEND_BLUE_FLOAT__MASK ;
 int A3XX_RB_BLEND_BLUE_FLOAT__SHIFT ;
 int util_float_to_half (float) ;

__attribute__((used)) static inline uint32_t A3XX_RB_BLEND_BLUE_FLOAT(float val)
{
 return ((util_float_to_half(val)) << A3XX_RB_BLEND_BLUE_FLOAT__SHIFT) & A3XX_RB_BLEND_BLUE_FLOAT__MASK;
}
