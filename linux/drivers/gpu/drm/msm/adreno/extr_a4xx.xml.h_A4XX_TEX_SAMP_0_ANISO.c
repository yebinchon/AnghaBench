
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a4xx_tex_aniso { ____Placeholder_a4xx_tex_aniso } a4xx_tex_aniso ;


 int A4XX_TEX_SAMP_0_ANISO__MASK ;
 int A4XX_TEX_SAMP_0_ANISO__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_TEX_SAMP_0_ANISO(enum a4xx_tex_aniso val)
{
 return ((val) << A4XX_TEX_SAMP_0_ANISO__SHIFT) & A4XX_TEX_SAMP_0_ANISO__MASK;
}
