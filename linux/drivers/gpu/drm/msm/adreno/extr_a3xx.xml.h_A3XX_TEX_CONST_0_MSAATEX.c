
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_tex_msaa { ____Placeholder_a3xx_tex_msaa } a3xx_tex_msaa ;


 int A3XX_TEX_CONST_0_MSAATEX__MASK ;
 int A3XX_TEX_CONST_0_MSAATEX__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_TEX_CONST_0_MSAATEX(enum a3xx_tex_msaa val)
{
 return ((val) << A3XX_TEX_CONST_0_MSAATEX__SHIFT) & A3XX_TEX_CONST_0_MSAATEX__MASK;
}
