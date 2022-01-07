
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a5xx_tex_clamp { ____Placeholder_a5xx_tex_clamp } a5xx_tex_clamp ;


 int A5XX_TEX_SAMP_0_WRAP_R__MASK ;
 int A5XX_TEX_SAMP_0_WRAP_R__SHIFT ;

__attribute__((used)) static inline uint32_t A5XX_TEX_SAMP_0_WRAP_R(enum a5xx_tex_clamp val)
{
 return ((val) << A5XX_TEX_SAMP_0_WRAP_R__SHIFT) & A5XX_TEX_SAMP_0_WRAP_R__MASK;
}
