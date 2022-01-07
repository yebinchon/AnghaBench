
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a6xx_tex_swiz { ____Placeholder_a6xx_tex_swiz } a6xx_tex_swiz ;


 int A6XX_TEX_CONST_0_SWIZ_W__MASK ;
 int A6XX_TEX_CONST_0_SWIZ_W__SHIFT ;

__attribute__((used)) static inline uint32_t A6XX_TEX_CONST_0_SWIZ_W(enum a6xx_tex_swiz val)
{
 return ((val) << A6XX_TEX_CONST_0_SWIZ_W__SHIFT) & A6XX_TEX_CONST_0_SWIZ_W__MASK;
}
