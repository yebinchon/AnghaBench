
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a6xx_tex_filter { ____Placeholder_a6xx_tex_filter } a6xx_tex_filter ;


 int A6XX_TEX_SAMP_0_XY_MAG__MASK ;
 int A6XX_TEX_SAMP_0_XY_MAG__SHIFT ;

__attribute__((used)) static inline uint32_t A6XX_TEX_SAMP_0_XY_MAG(enum a6xx_tex_filter val)
{
 return ((val) << A6XX_TEX_SAMP_0_XY_MAG__SHIFT) & A6XX_TEX_SAMP_0_XY_MAG__MASK;
}
