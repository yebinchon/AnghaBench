
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_tex_clamp { ____Placeholder_a3xx_tex_clamp } a3xx_tex_clamp ;


 int A3XX_TEX_SAMP_0_WRAP_R__MASK ;
 int A3XX_TEX_SAMP_0_WRAP_R__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_TEX_SAMP_0_WRAP_R(enum a3xx_tex_clamp val)
{
 return ((val) << A3XX_TEX_SAMP_0_WRAP_R__SHIFT) & A3XX_TEX_SAMP_0_WRAP_R__MASK;
}
