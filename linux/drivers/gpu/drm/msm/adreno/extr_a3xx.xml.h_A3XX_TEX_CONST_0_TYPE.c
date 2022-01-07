
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_tex_type { ____Placeholder_a3xx_tex_type } a3xx_tex_type ;


 int A3XX_TEX_CONST_0_TYPE__MASK ;
 int A3XX_TEX_CONST_0_TYPE__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_TEX_CONST_0_TYPE(enum a3xx_tex_type val)
{
 return ((val) << A3XX_TEX_CONST_0_TYPE__SHIFT) & A3XX_TEX_CONST_0_TYPE__MASK;
}
