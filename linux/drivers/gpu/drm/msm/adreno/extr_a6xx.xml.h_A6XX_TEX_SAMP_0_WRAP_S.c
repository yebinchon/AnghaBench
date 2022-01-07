
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a6xx_tex_clamp { ____Placeholder_a6xx_tex_clamp } a6xx_tex_clamp ;


 int A6XX_TEX_SAMP_0_WRAP_S__MASK ;
 int A6XX_TEX_SAMP_0_WRAP_S__SHIFT ;

__attribute__((used)) static inline uint32_t A6XX_TEX_SAMP_0_WRAP_S(enum a6xx_tex_clamp val)
{
 return ((val) << A6XX_TEX_SAMP_0_WRAP_S__SHIFT) & A6XX_TEX_SAMP_0_WRAP_S__MASK;
}
