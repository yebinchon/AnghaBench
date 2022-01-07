
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum sq_tex_sign { ____Placeholder_sq_tex_sign } sq_tex_sign ;


 int A2XX_SQ_TEX_0_SIGN_Z__MASK ;
 int A2XX_SQ_TEX_0_SIGN_Z__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_SQ_TEX_0_SIGN_Z(enum sq_tex_sign val)
{
 return ((val) << A2XX_SQ_TEX_0_SIGN_Z__SHIFT) & A2XX_SQ_TEX_0_SIGN_Z__MASK;
}
