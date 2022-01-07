
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum sq_tex_clamp_policy { ____Placeholder_sq_tex_clamp_policy } sq_tex_clamp_policy ;


 int A2XX_SQ_TEX_1_CLAMP_POLICY__MASK ;
 int A2XX_SQ_TEX_1_CLAMP_POLICY__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_SQ_TEX_1_CLAMP_POLICY(enum sq_tex_clamp_policy val)
{
 return ((val) << A2XX_SQ_TEX_1_CLAMP_POLICY__SHIFT) & A2XX_SQ_TEX_1_CLAMP_POLICY__MASK;
}
