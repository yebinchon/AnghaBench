
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a6xx_tex_fetchsize { ____Placeholder_a6xx_tex_fetchsize } a6xx_tex_fetchsize ;


 int A6XX_TEX_CONST_2_FETCHSIZE__MASK ;
 int A6XX_TEX_CONST_2_FETCHSIZE__SHIFT ;

__attribute__((used)) static inline uint32_t A6XX_TEX_CONST_2_FETCHSIZE(enum a6xx_tex_fetchsize val)
{
 return ((val) << A6XX_TEX_CONST_2_FETCHSIZE__SHIFT) & A6XX_TEX_CONST_2_FETCHSIZE__MASK;
}
