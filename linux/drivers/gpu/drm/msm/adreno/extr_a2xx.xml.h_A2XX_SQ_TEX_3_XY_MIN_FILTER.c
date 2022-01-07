
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum sq_tex_filter { ____Placeholder_sq_tex_filter } sq_tex_filter ;


 int A2XX_SQ_TEX_3_XY_MIN_FILTER__MASK ;
 int A2XX_SQ_TEX_3_XY_MIN_FILTER__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_SQ_TEX_3_XY_MIN_FILTER(enum sq_tex_filter val)
{
 return ((val) << A2XX_SQ_TEX_3_XY_MIN_FILTER__SHIFT) & A2XX_SQ_TEX_3_XY_MIN_FILTER__MASK;
}
