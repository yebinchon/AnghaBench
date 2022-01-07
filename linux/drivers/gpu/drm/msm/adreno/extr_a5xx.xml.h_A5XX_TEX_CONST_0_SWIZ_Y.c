
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a5xx_tex_swiz { ____Placeholder_a5xx_tex_swiz } a5xx_tex_swiz ;


 int A5XX_TEX_CONST_0_SWIZ_Y__MASK ;
 int A5XX_TEX_CONST_0_SWIZ_Y__SHIFT ;

__attribute__((used)) static inline uint32_t A5XX_TEX_CONST_0_SWIZ_Y(enum a5xx_tex_swiz val)
{
 return ((val) << A5XX_TEX_CONST_0_SWIZ_Y__SHIFT) & A5XX_TEX_CONST_0_SWIZ_Y__MASK;
}
