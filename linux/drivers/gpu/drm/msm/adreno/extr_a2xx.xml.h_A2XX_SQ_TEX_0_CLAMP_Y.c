
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum sq_tex_clamp { ____Placeholder_sq_tex_clamp } sq_tex_clamp ;


 int A2XX_SQ_TEX_0_CLAMP_Y__MASK ;
 int A2XX_SQ_TEX_0_CLAMP_Y__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_SQ_TEX_0_CLAMP_Y(enum sq_tex_clamp val)
{
 return ((val) << A2XX_SQ_TEX_0_CLAMP_Y__SHIFT) & A2XX_SQ_TEX_0_CLAMP_Y__MASK;
}
