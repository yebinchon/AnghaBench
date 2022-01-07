
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a5xx_tex_type { ____Placeholder_a5xx_tex_type } a5xx_tex_type ;


 int A5XX_TEX_CONST_2_TYPE__MASK ;
 int A5XX_TEX_CONST_2_TYPE__SHIFT ;

__attribute__((used)) static inline uint32_t A5XX_TEX_CONST_2_TYPE(enum a5xx_tex_type val)
{
 return ((val) << A5XX_TEX_CONST_2_TYPE__SHIFT) & A5XX_TEX_CONST_2_TYPE__MASK;
}
