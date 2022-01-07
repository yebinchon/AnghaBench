
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum sq_tex_swiz { ____Placeholder_sq_tex_swiz } sq_tex_swiz ;


 int A2XX_SQ_TEX_3_SWIZ_Y__MASK ;
 int A2XX_SQ_TEX_3_SWIZ_Y__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_SQ_TEX_3_SWIZ_Y(enum sq_tex_swiz val)
{
 return ((val) << A2XX_SQ_TEX_3_SWIZ_Y__SHIFT) & A2XX_SQ_TEX_3_SWIZ_Y__MASK;
}
