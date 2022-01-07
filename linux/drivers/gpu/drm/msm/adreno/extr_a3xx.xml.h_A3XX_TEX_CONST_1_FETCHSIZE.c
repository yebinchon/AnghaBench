
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a3xx_tex_fetchsize { ____Placeholder_a3xx_tex_fetchsize } a3xx_tex_fetchsize ;


 int A3XX_TEX_CONST_1_FETCHSIZE__MASK ;
 int A3XX_TEX_CONST_1_FETCHSIZE__SHIFT ;

__attribute__((used)) static inline uint32_t A3XX_TEX_CONST_1_FETCHSIZE(enum a3xx_tex_fetchsize val)
{
 return ((val) << A3XX_TEX_CONST_1_FETCHSIZE__SHIFT) & A3XX_TEX_CONST_1_FETCHSIZE__MASK;
}
