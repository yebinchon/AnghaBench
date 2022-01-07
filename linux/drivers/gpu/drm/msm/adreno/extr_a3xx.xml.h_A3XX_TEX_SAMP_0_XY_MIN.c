
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_tex_filter { ____Placeholder_a3xx_tex_filter } a3xx_tex_filter ;


 int A3XX_TEX_SAMP_0_XY_MIN__MASK ;
 int A3XX_TEX_SAMP_0_XY_MIN__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_TEX_SAMP_0_XY_MIN(enum a3xx_tex_filter val)
{
 return ((val) << A3XX_TEX_SAMP_0_XY_MIN__SHIFT) & A3XX_TEX_SAMP_0_XY_MIN__MASK;
}
