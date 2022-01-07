
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a5xx_tex_filter { ____Placeholder_a5xx_tex_filter } a5xx_tex_filter ;


 int A5XX_TEX_SAMP_0_XY_MAG__MASK ;
 int A5XX_TEX_SAMP_0_XY_MAG__SHIFT ;

__attribute__((used)) static inline uint32_t A5XX_TEX_SAMP_0_XY_MAG(enum a5xx_tex_filter val)
{
 return ((val) << A5XX_TEX_SAMP_0_XY_MAG__SHIFT) & A5XX_TEX_SAMP_0_XY_MAG__MASK;
}
